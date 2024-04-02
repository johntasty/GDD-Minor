Shader "Custom/RadialBlur"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}       
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
            SAMPLER(sampler_MainTex);
           

            float _Intensity;           
            float _Samples;

            float _Lenght;
            float _Radius;
            float _MaskCenterSize;
            float _MaskEdge;           

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


            half4 frag (v2f i) : SV_Target
            {

                half4 color = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, i.uv);
                
                float2 screenUV = i.screen.xy / i.screen.w;
                float mask = Mask(i.uv);
                float invLer = invLerp(_MaskCenterSize,_MaskEdge, mask );               
                invLer = 1. - invLer;
                float fallOff = invLer + _Radius;
                

                float2 uv = PolarCords(screenUV, float2(.5,.5), 1, 1);
                
                half4 colorBLur = half4(0,0,0,1);  

                float2 dist = i.uv - float2(.5,.5);
                for (int j = 1; j <= _Samples; j++)
                {
                    float scale = 1 - _Lenght * (j / _Samples) * smoothstep(invLer, fallOff, length(dist));
                    colorBLur += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, dist * scale + float2(.5,.5));
                }
  
                colorBLur /= float(_Samples);    

				return lerp(color, colorBLur, _Intensity);
                
            }
            ENDHLSL
        }
    }
    FallBack "Diffuse"
}
