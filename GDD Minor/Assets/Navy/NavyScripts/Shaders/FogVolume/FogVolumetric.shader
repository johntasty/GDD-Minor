Shader "Unlit/FogVolumetric"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _NoiseTexture ("NoiseTexture",3D) = "white" {}
        _ColorAmbient ("Ambient Color", Color) = (0,0,0,0)
        _ColorFog ("Fog Color", Color) = (0,0,0,0)
        _MaxSteps("MaxSteps", Int) = 0
        _Offsets("Offsets Fog Height", float) = 0        
        _Distance("Draw Distance", float) = 0

        _Accuracy("Light Attentuation Initial", float) = 0
        _DensRemoval("Density Removal", float) = 0
        _NoiseStrength("Noise Jitter", float) = 0
        _DensityScale("Density Scale", float) = 0
        _Scatter("Light Scatter", float) = 0      
        _LightScPower("Density Initial Power", float) = 0      
        _Extinction("_Extinction", float) = 0      
        _Inscatter ("_Inscatter", float) = 0      
        _Intensity("Intensity", float) = 0
       
        _Tilling("Noise Tilling", float) = 0
        _NoiseTilling("Noise Octave Tilling", float) = 0
        _NoiseWeight("Noise Octave Weight", float) = 0
        _NoiseMovement("Noise Move Speed", float) = 0
        _MaxLights("Max Lights", int) = 0
        
        _Range("Fog Range", Range(0.0001,100.)) = 0.

        
    }
    SubShader
    {
        Tags { "RenderPipeline"="UniversalPipeline"
                "RenderType"="Transparent"                
                "Queue"="Transparent"
        }
       
        Cull Off ZWrite Off ZTest Always
        Blend SrcAlpha OneMinusSrcAlpha

        Pass
        {
            HLSLPROGRAM

            #pragma vertex vert
            #pragma fragment frag            
            #pragma multi_compile_fragment _ _ADDITIONAL_LIGHTS 

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareDepthTexture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RealtimeLights.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;               
                float4 vertex : SV_POSITION;
                float3 rayOrigin: TEXCOORD3;
                float3 objectS: TEXCOORD2;
                float4 screen : TEXCOORD1;
            };

            struct VolumeLight
            {               
                float4 position;
                half3 color;
                half4 attenuation;
                half4 spotDirection;
            };

            TEXTURE2D(_MainTex);           
            TEXTURE2D(_Noise);           
            TEXTURE3D(_NoiseTexture);           
            SAMPLER(sampler_MainTex);
            SAMPLER(sampler_NoiseTexture);
            SAMPLER(sampler_Noise);
           
            float4 _CameraDepthTexture_TexelSize;

            half4 _ColorAmbient;
            half4 _ColorFog;

            int _MaxSteps;
            float _Tilling;
            float _Distance;
            float _Accuracy;
            float _NoiseStrength;
            float _DensRemoval;
            float _Scatter;

            float _Intensity;
            float _LightScPower;

            float _Offsets;
            float _Range;
            float _NoiseMovement;
            float _NoiseWeight;
            float _NoiseTilling;
            float _Extinction;
            float _Inscatter ;

            float _DensityScale;
            int _MaxLights;

         
            #define _Pi 3.14159265
            #define Time _Time.x

            VolumeLight GetLight(int index)
            {
                VolumeLight output;
            
                output.position = _AdditionalLightsPosition[index];
                output.color = _AdditionalLightsColor[index];
                output.attenuation = _AdditionalLightsAttenuation[index];
                output.spotDirection = _AdditionalLightsSpotDir[index];
            
                return output;
            }

            v2f vert (appdata v)
            {
                v2f o;
                UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);
                VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);

                o.vertex = vertexInput.positionCS;
                o.objectS = vertexInput.positionWS;
                o.rayOrigin = _WorldSpaceCameraPos;
                o.uv = v.uv;     
                o.screen = ComputeScreenPos(o.vertex);
                return o;
            }

            float SCurveC2(float x)
            {
                return ((x * 6.0 - 15.0) * x + 10.0) * x * x * x;
            }
         
            float hashs (float p)
            {
              return frac(sin(p)*43758.5453);
            }
            
            float NoiseHash (float3 x)
            {
                
                float3 p = floor(x);
                float3 f = frac(x);
                f = f * f * (3.0 - 2.0 * f);

                float2 uv = (p.xy+float2(37.0,17.0)*p.z) + f.xy;
                float2 rg = SAMPLE_TEXTURE2D(_Noise, sampler_Noise, (uv + 0.5)/128.0).yx; 
	            return lerp( rg.x, rg.y, f.z );  
               
            }

            float noiseRand(float3 p) {
               
                float3 noiseScroll = float3(0,1.,0) * _NoiseMovement * _Time.y;
                float3 q = p - noiseScroll;
                float f;
                //float d = 0.2 - p.y;
                float weight = _NoiseWeight;    
                f =  weight * NoiseHash(q);
                for (int j = 0; j < 4; j ++) {                
                  q += noiseScroll * (_NoiseTilling - (j * .1));
                  weight *= .5;
                  f += weight * NoiseHash(q);               
                }
                
                return clamp(  .5 + 1.75 * f, 0.0, 1.0 );
            }
            float EvalNoise(float3 p, float dist)
            {
                float density = 1.0;               
                float n = noiseRand(p * _Tilling);               
                density = saturate(n) * _DensityScale;
               
                float d = smoothstep(0., _Range, dist);
                
                d = lerp(0.,2., d * _DensRemoval);
                return (density * d);
            }

            float boxIntersection( in float3 ro, in float3 rd, out float2 t) 
            {
                ro -= unity_ObjectToWorld._m03_m13_m23;
                ro.y -= _Offsets;
                 // extract x and y scale from object to world transform matrix
                float3 scale = float3(
                    (unity_ObjectToWorld._m00_m10_m20).x,
                    (unity_ObjectToWorld._m01_m11_m21).y,
                    (unity_ObjectToWorld._m02_m12_m22).z
                ) / 2.;
                	float3 m = 1.0/rd; // can precompute if traversing a set of aligned boxes       
                	float3 n = m*ro; // can precompute if traversing a set of aligned boxes       
	                float3 o = abs(m)*scale;                
	                float3 t1 = -n - o;
	                float3 t2 = -n + o;
	                
	                t.x = max( max( t1.x, t1.y ), t1.z );
	                t.y = min( min( t2.x, t2.y ), t2.z );
	                                   
                    if( t.x > t.y || t.y < 0.0) return -1.; // no intersection
                           
	                // if(ray start == inside cube) 
	                if(t.x < 0.0) {t.xy = t.xy;  return 1.0;}
	               
	                return t.y < t.x ? 0.0 : (t.x > 0.0 ? 1.0 : -1.0);
            }
            float fogVolume(float3 pos)
            {
                float3 uvw = pos ;  
               
                //float noise = EvalNoise(uvw);                
                return uvw;

            }

            float fogVolume2(float3 pos)
            {
                float3 uvw = pos * _Tilling;  
               
                float noise = SAMPLE_TEXTURE3D(_NoiseTexture, sampler_NoiseTexture, uvw);            
                return noise;

            }
            float MieSc(float angle)
            {
                float gSqr = sqrt(_Scatter);	           
                return (0.07957747154) * ((1 - gSqr) / (pow(abs((1 + gSqr) - (2 * _Scatter) * angle), 1.5)));

            }
       
            // Henyey-Greenstein Phase Function
            float hg(float costh)
            {
                float g = _Scatter * _Scatter;
                return (3.0 * (1.0 - g) * (1.0 + costh * costh)) / (4.0 * PI * 2.0 * (2.0 + g) * pow(1.0 + g - 2.0 * _Scatter * costh, 3.0/2.0));                
            }
            float anisotropy(float costheta)
            {
            	float g = _Scatter;
            	float gsq = g*g;
            	float denom = 1 + gsq - 2.0 * g * costheta;
            	denom = denom * denom * denom;
            	denom = sqrt(max(0, denom));
            	return (1 - gsq) / denom;
            }
            float Attenuation(float distSqr, float range)
	        {
	        	float d = sqrt(distSqr);	        	
	        	return 1.0 / pow(1.0 +   d/range, 2);
	        }
            half3 lights(float3 pos, float3 raydir)
            {               
                int _lightsCount = GetAdditionalLightsCount();                
                half3 totalColor = 0.0;              

                //attenuation = 1.;
                for(int l = 0; l < min(_lightsCount, _MaxLights); l++){
                               
                    Light _light = GetAdditionalLight(l, pos);
                    float att = _light.distanceAttenuation * hg(dot(_light.direction, raydir));
                    totalColor += _light.color * att;
                    //TODO sort and use all lights
                    // VolumeLight light = GetLight(l);

                    // float3 lightVector = light.position.xyz - pos * light.position.w;
                    // float distanceSqr = max(dot(lightVector, lightVector), HALF_MIN);

                    // half3 lightDirection = half3(lightVector * rsqrt(distanceSqr));
                    // // full-float precision required on some platforms
                    // float attenuation = DistanceAttenuation(distanceSqr, light.attenuation.xy) * AngleAttenuation(light.spotDirection.xyz, lightDirection, light.attenuation.zw);
                    // attenuation *= hg(dot(lightDirection, raydir));
                    // totalColor += light.color * attenuation;                   
                   
                }
                
                return totalColor;
            }
            float phaseFunction()
            {
                return 1.0/(4.0*3.14);
            }
            half4 MarchScene(float3 ro, float3 rd, float depth, float2 boxIntersect, float3 camera)
            {
                
                 float density = 0.0;
                 float stepSize;
                 float sliceVolume = (boxIntersect.y - boxIntersect.x) / _MaxSteps;
                 float travelled = 0; 
                 float o_max = _LightScPower;
                 float oc = 0.0;

                 float transmitance = 0.;  
                 float attenuation = 1.;  

                 half3 totalLight = 0.;
                 half3 fogColor = _ColorFog.rgb;

                 [loop]
                 for(int j = 0; j < _MaxSteps; j++){
                     
                    if(travelled + boxIntersect.x > depth || travelled > depth || travelled > boxIntersect.y )break;
                    float3 pos = ro + rd * travelled;                   
                    float denC = EvalNoise(pos, depth);

                    if(denC > 0.01){
                        
                        
                        float extinction = max(_LightScPower, _Extinction * denC);
                        float transmitInf = exp(-oc) - exp(-oc - extinction * stepSize);
                        transmitance += transmitInf;                        
                      
                        half3 light = lights(pos, rd) * _ColorFog.rgb;                       
                        totalLight += denC * light * phaseFunction() * transmitance * _Intensity;                      

                        oc += extinction * stepSize;  
                        
                    }
                    stepSize = max(0.2, 0.03 * travelled);
                    travelled += stepSize;
                 }
               

                 return half4(totalLight + _ColorAmbient, transmitance);
            }
            half4 CalculateFog(float3 ro, float3 rd, float depth, float noise)
            {
                float near = 0;
                float far = _Distance;
                float2 boxIntesection;
                float boxInterse = boxIntersection(ro,rd, boxIntesection);

                bool hit = boxInterse > 0? true : false;

                if (!hit) return 0;   
                
                far = min(far, depth);
                float maxDepth = (far - near);

                if (maxDepth < 0) return 0;

                float3 rayStart = ro + rd * (near + noise * _NoiseStrength);
                half4 density = MarchScene(rayStart, rd, min(maxDepth, _Distance), boxIntesection, ro);
                return density;
            }
            half4 frag (v2f i) : SV_Target
            {
                float2 screenuvs = (i.screen.xy / i.screen.w);
               
	            float3 viewVector = mul(unity_CameraInvProjection, float4(screenuvs * 2 - 1, 0, -1)).xyz;
	            viewVector = mul(unity_CameraToWorld, float4(viewVector, 0)).xyz;

                float len = length(viewVector);
	            float3 rayDir = viewVector / len;

                float2 depthUV = screenuvs + _CameraDepthTexture_TexelSize.xy;
	            float depth = SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, sampler_CameraDepthTexture, depthUV);	            
	            float linearDepth = LinearEyeDepth(depth,_ZBufferParams) * len;

                float noiseJitter = SAMPLE_TEXTURE2D(_Noise, sampler_Noise, i.uv).r;
               
               //float dens = MarchScene(i.rayOrigin, rayDir,noiseJitter, linearDepth);
               half4 color = CalculateFog(i.rayOrigin, rayDir, linearDepth, noiseJitter);
               return  color;
            }
            ENDHLSL
        }
    }
}
