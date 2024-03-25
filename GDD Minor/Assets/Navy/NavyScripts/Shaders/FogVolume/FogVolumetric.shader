Shader "Unlit/FogVolumetric"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _NoiseTexture ("NoiseTexture",3D) = "white" {}
        _Color ("Color", Color) = (0,0,0,0)
        _MaxSteps("MaxSteps", Int) = 0
        _Tilling("Tilling", float) = 0
        _Distance("Distance", float) = 0
        _Accuracy("Accuracy", float) = 0
        _NoiseStrength("Noise Strength", float) = 0
        _DensityScale("Density Scale", float) = 0
        _Scatter("Light Scatter", float) = 0      
        _Intensity("Intensity", float) = 0
        _Bounds("Bounds", Vector) = (0,0,0,0)
        _Offsets("Offsets", Vector) = (0,0,0,0)
        _Range("Range", Vector) = (0,0,0,0)

        
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

            TEXTURE2D(_MainTex);           
            TEXTURE2D(_Noise);           
            TEXTURE3D(_NoiseTexture);           
            SAMPLER(sampler_MainTex);
            SAMPLER(sampler_NoiseTexture);
            SAMPLER(sampler_Noise);
           
            float4 _CameraDepthTexture_TexelSize;

            half4 _Color;

            int _MaxSteps;
            float _Tilling;
            float _Distance;
            float _Accuracy;
            float _NoiseStrength;
            float _Scatter;

            float _Intensity;

            float4 _Bounds;
            float4 _Offsets;
            float3 _Range;

            float _DensityScale;

         
            #define _Pi 3.14159265
            #define Time _Time.x
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
            float2 CmplxMul(float2 c0, float2 c1)
            {
                return float2(c0.x * c1.x - c0.y * c1.y, c0.y * c1.x + c0.x * c1.y);
            }
           
            float Noise(float3 pos, float4 aniS, float aniP)
            {
                float3 ip = floor(pos);
                float3 fp = pos - ip;
                
                fp = fp * fp *(3.0-2.0 * fp);
                pos = ip + fp;
               
                const float texDim = 64.0;
                const float2 prime = _Offsets.xy; // primes < texDim
                
                const float txlDim = 1.0 / texDim;
                const float2 pmul = prime * txlDim;
                const float o0 = 0.5 * txlDim;
                const float2 o1 = (prime + 0.5) * txlDim;
            
                float2 tex = pos.xz * txlDim + ip.y * pmul ;
            
                float4 n0 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, tex + o0);   
                float4 n1 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, tex + o1);
               
                
                float4 n = lerp(n0, n1, fp.y);
                
                float r = (n.z) ;    
                float timer = sin(((Time * _Bounds.w) + aniS + n.y * (_Pi * 2.) + aniP)  * .5 + .5);
                r *= timer;//lerp( n.z,n.w,timer);
               
                return r ;
            }
            float3 random2(float3 st){
                st = float3( dot(st,float3(127.1,311.7, 269.5)), dot(st,float3(269.5,183.3, 311.7)), dot(st,float3(269.5,183.3, 127.1)));
                return -1.0 + 2.0 * frac(sin(st) * 7.);
            }
            float noiseRand(float3 st) {
                float3 i = floor(st);
                float3 f = frac(st);

                // smootstep
                float3 u = f*f*(3.0-2.0*f);
                //float n = p.x + p.y * _Offsets.x + _Offsets.y * p.z;
                float xDot = lerp(dot( random2(i + float3(0.0, 0.0, 0) ), f - float3(0, 0.0, 0.0)),dot( random2(i + float3(1.0, 0.0, 0) ), f - float3(1.0, 0, 0) ), u.x);
                float yDot = lerp(dot( random2(i + float3(0.0,1.0, 0.) ), f - float3(0.0,1.0, 0) ),dot( random2(i + float3(1.0,1.0, 0) ), f - float3(1.0,1.0,0) ), u.x);
                float zDot = lerp(dot( random2(i + float3(0.0,0.0, 1.) ), f - float3(0.0,0, 1.0) ),dot( random2(i + float3(1.0,1.0, 1.0) ), f - float3(1.0,1.0, 1.0) ), u.x);
               
                return lerp(lerp(xDot, yDot, u.x), lerp(xDot, zDot, u.y), u.z);
            }


            float Fbm(float3 p, float3 off)
            {
                const float count = 4.0;
            
                const float ang = _Pi * .65;
                const float2 rot = float2(cos(ang), sin(ang));
                
                float res = 0.;
                float accu_w = 0.0;
                float w = 1.0;
                float aniS = 0.8;
                float aniP = 0.0;
                
                for (int i = 0; i < count; ++i)
                {
                    float v = Noise(p, aniS, aniP);
                   
                    res += v * w;
                    
                    accu_w += w;
                    
                    aniS *= _Bounds.z;
                    aniP += ang;
                    w *= _Bounds.y;
                    p *= (_Bounds.x + (i * .05));
                    p.xy = CmplxMul(p.xy, rot);
                    p = p.yzx;
                
                }
                
                res /= accu_w;
                
                return res;
            }
            float EvalNoise(float3 p, float distance)
            {
                float density = 1.0;
                float n = Fbm(p * _Tilling, 0.);
                n = n * .5 + .5;
                n = SCurveC2(n);
                n = SCurveC2(n);
                n = SCurveC2(n);
                n = SCurveC2(n);

                density = saturate(n - _NoiseStrength) * _DensityScale;
                
                return density * smoothstep(_Range.x, _Range.y, distance);
            }

            float boxIntersection( in float3 ro, in float3 rd, out float2 t) 
            {
                ro -= unity_ObjectToWorld._m03_m13_m23;
                ro.y -= _Offsets.z;
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
            float MieSc(float angle, float str)
            {
                float gSqr = sqrt(str);
	            // Magic number is 1/4pi
                return (0.07957747154) * ((1 - gSqr) / (pow(abs((1 + gSqr) - (2 * str) * angle), 1.5)));

            }
            half3 lights(float3 pos, float3 raydir, float scatter,out float attenuation)
            {
                Light _lights;
                int _lightsCount = GetAdditionalLightsCount();

                half3 totalColor = 0.0;
                //totalColor += _lights.color;
                attenuation = 1.;
                for(int l = 0; l < _lightsCount; l++){

                    _lights = GetAdditionalLight(l , pos);
                    half3 color = _lights.color * sqrt(length(_lights.direction));
                    color *= _lights.distanceAttenuation;
                    color *= MieSc(dot(_lights.direction, raydir), scatter);

                    totalColor += color;
                    attenuation *= _lights.distanceAttenuation;
                }
                
                return totalColor;
            }
            half4 MarchScene(float3 ro, float3 rd, float depth, float2 boxIntersect, float3 camera)
            {
                 float startingDistance = length(camera - ro);
               
                 float density = 0.0;
                 //float stepSize = 1.0 / _MaxSteps;
                 float sliceVolume = (boxIntersect.y - boxIntersect.x) / _MaxSteps;
                 float travelled = 0; 
                 float o_max = _Offsets.w;// maximal scattering coefficient
                 float oc = 0.0;
                 float result = 0.0;  
                 half3 sceneColor = 0.;
                 
                 [loop]
                 for(int j = 0; j < _MaxSteps; j++){
                     
                    if(travelled + boxIntersect.x > depth || travelled > depth || travelled > boxIntersect.y )break;
                    float3 pos = ro + rd * travelled;
                    //lerp(insideOutBox.x, insideOutBox.y, (j  + noiseJitter) * stepS);
                   
                    float denC = EvalNoise(pos, travelled + startingDistance);
                  
                    float attenuation = _Accuracy;
                    half3 color = _Color.rgb;
                    //n = denC;
                    float o = o_max;
                    o *= denC;
                    float influence = exp(-oc) - exp(-oc - o * sliceVolume);
                    
                    float lightAttenuation;
		            half3 light = lights(pos, rd, _Scatter ,lightAttenuation) * _Intensity;

                    color += light;
                    attenuation += lightAttenuation;

                    result += attenuation * influence;                   
                    sceneColor += color * influence;

                    oc += o * sliceVolume;  
                    travelled += sliceVolume;
                 }
                 density = result;
                 density = clamp(density,0,1);
                 return half4(sceneColor, density);
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
                half4 density = MarchScene(rayStart, rd, min(maxDepth, 50.), boxIntesection, ro);
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
