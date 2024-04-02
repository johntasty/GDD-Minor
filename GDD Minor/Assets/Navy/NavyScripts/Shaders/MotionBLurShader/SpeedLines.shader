Shader "Custom/SpeedLines"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _Noise ("Noise Texture", 2D) = "white" {}
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" "RenderPipeline" = "UniversalPipeline" }
        LOD 100

        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            #pragma multi_compile_fog

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/SurfaceInput.hlsl"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;               
                float4 vertex : SV_POSITION;
                float4 screen : TEXCOORD1;
            };

            TEXTURE2D(_MainTex);
            TEXTURE2D(_Noise);
            SAMPLER(sampler_MainTex);
            SAMPLER(sampler_Noise);

            float _Intensity;
            float4 _OverlayColor;
            float _Radial;
            float _Lenght;
            float _MaskCenterSize;
            float _MaskEdge;
            float _LineDensity;
            float _LineFallOff;
            float _RotationSpeed;

            v2f vert (appdata v)
            {
                v2f o;
                UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);
                VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);

                o.vertex = vertexInput.positionCS;
                o.uv = v.uv;     
                o.screen = ComputeScreenPos(o.vertex);
                return o;
            }

            float2 PolarCords(float2 UV, float2 Center, float RadialScale, float LengthScale)
            {
                float2 delta = UV - Center;
                float radius = length(delta) * 2 * RadialScale;
                float angle = atan2(delta.x, delta.y) * 1.0/6.28 * LengthScale;

                return float2(radius, angle);
            }
            float Mask(float2 uv)
            {
                return distance(uv, float2(.5,.5));
            }
            float invLerp(float from, float to, float value)
            {
                return (value - from) / (to - from);
            }

            float2 Rotate(float2 UV, float2 Center, float Rotation)
            {
                //rotation matrix
                UV -= Center;
                float s = sin(Rotation);
                float c = cos(Rotation);
            
                //center rotation matrix
                float2x2 rMatrix = float2x2(c, -s, s, c);
                rMatrix *= 0.5;
                rMatrix += 0.5;
                rMatrix = rMatrix*2 - 1;
            
                //multiply the UVs by the rotation matrix
                UV.xy = mul(UV.xy, rMatrix);
                UV += Center;
            
                return UV;
            }
            inline float Unity_SimpleNoise_RandomValue_float (float2 uv)
            {
                float angle = dot(uv, float2(12.9898, 78.233));               
                return frac(sin(angle)*43758.5453);
            }
            inline float Unity_SimpleNnoise_Interpolate_float (float a, float b, float t)
            {
                return (1.0-t)*a + (t*b);
            }      
            inline float Unity_SimpleNoise_ValueNoise_float (float2 uv)
            {
                float2 i = floor(uv);
                float2 f = frac(uv);
                f = f * f * (3.0 - 2.0 * f);
            
                uv = abs(frac(uv) - 0.5);
                float2 c0 = i + float2(0.0, 0.0);
                float2 c1 = i + float2(1.0, 0.0);
                float2 c2 = i + float2(0.0, 1.0);
                float2 c3 = i + float2(1.0, 1.0);
                float r0 = Unity_SimpleNoise_RandomValue_float(c0);
                float r1 = Unity_SimpleNoise_RandomValue_float(c1);
                float r2 = Unity_SimpleNoise_RandomValue_float(c2);
                float r3 = Unity_SimpleNoise_RandomValue_float(c3);
            
                float bottomOfGrid = Unity_SimpleNnoise_Interpolate_float(r0, r1, f.x);
                float topOfGrid = Unity_SimpleNnoise_Interpolate_float(r2, r3, f.x);
                float t = Unity_SimpleNnoise_Interpolate_float(bottomOfGrid, topOfGrid, f.y);
                return t;
            }
            float Unity_SimpleNoise_float(float2 UV, float Scale)
            {
                float t = 0.0;
            
                float freq = pow(2.0, float(0));
                float amp = pow(0.5, float(3-0));
                t += Unity_SimpleNoise_ValueNoise_float(float2(UV.x*Scale/freq, UV.y*Scale/freq))*amp;
            
                freq = pow(2.0, float(1));
                amp = pow(0.5, float(3-1));
                t += Unity_SimpleNoise_ValueNoise_float(float2(UV.x*Scale/freq, UV.y*Scale/freq))*amp;
            
                freq = pow(2.0, float(2));
                amp = pow(0.5, float(3-2));
                t += Unity_SimpleNoise_ValueNoise_float(float2(UV.x*Scale/freq, UV.y*Scale/freq))*amp;
            
                return t;
            }


            half4 frag (v2f i) : SV_Target
            {

                half4 color = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, i.uv);
                
                float2 screenUV = i.screen.xy / i.screen.w;
                float mask = Mask(screenUV);
                float invLer = invLerp(_MaskCenterSize,_MaskEdge, mask );
                invLer *= _LineDensity;
                invLer = 1. - invLer;
                float fallOff = invLer + _LineFallOff;

                float2 uv = PolarCords(screenUV, float2(.5,.5), _Radial, _Lenght);
                float time = floor(frac(_Time.y * 2.) * (10. * _RotationSpeed));
                uv *= Rotate(uv, float2(.5,.5), time );

                half noi = Unity_SimpleNoise_float(uv, 100);
                noi = smoothstep(invLer, fallOff, noi);

				return lerp(color, noi * _OverlayColor, _Intensity);
                
            }
            ENDHLSL
        }
    }
    FallBack "Diffuse"
}
