Shader "Unlit/BookVertexMovement"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        
        _NormalMap("_NormalMap", 2D) = "white" {}
        _EffectRadius("Wave Effect Radius",Range(0.0,1.0)) = 0.5
		[PerRendererData]_WaveSpeed("Wave Speed", Range(0.0,100.0)) = 3.0
		_WaveHeight("Wave Height", Range(0.0,30.0)) = 5.0
		_WaveDensity("Wave Density", Range(0.0001,1.0)) = 0.007
		_Yoffset("Y Offset",Float) = 0.0
		_Threshold("Threshold",Range(0,30)) = 3 
		[PerRendererData]_StrideSpeed("Stride Speed",Range(0.0,10.0)) = 2.0
		_StrideStrength("Stride Strength", Range(0.0,20.0)) = 3.0
    }
    SubShader
    {
         Tags
        {
            "RenderPipeline" = "UniversalPipeline"
            "RenderType"="Opaque"
            "UniversalMaterialType" = "Lit"
            "Queue"="Geometry"
        }
        LOD 100

        Pass
        {
            Tags
            {
                "LightMode"="UniversalForward"
            }

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            #pragma multi_compile_fog
            #pragma multi_compile_instancing
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
                float3 positionWS               : TEXCOORD1;
                float3 normalOS     : NORMAL;
                float4 tangentOS    : TANGENT;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float3 positionWS               : TEXCOORD1;
                float4 vertex : SV_POSITION;
                float3 normalWS                 : TEXCOORD2;
                float3 lightTS                  : TEXCOORD3;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            sampler2D _MainTex;
            sampler2D _NormalMap;
            float4 _MainTex_ST;
            float4  _NormalMap_ST;
            half _EffectRadius;
			
			half _WaveHeight;
			half _WaveDensity;
			half _Yoffset;
			int _Threshold;
			
         	half _StrideStrength;
         	
            UNITY_INSTANCING_BUFFER_START(Props)
                UNITY_DEFINE_INSTANCED_PROP(half, _WaveSpeed)
                UNITY_DEFINE_INSTANCED_PROP(half, _StrideSpeed)
            UNITY_INSTANCING_BUFFER_END(Props)

            v2f vert (appdata v)
            {
                v2f o;
                UNITY_SETUP_INSTANCE_ID(v);
                UNITY_TRANSFER_INSTANCE_ID(v, o);
                float waveSpeed = UNITY_ACCESS_INSTANCED_PROP(Props, _WaveSpeed);
                float strideSpeed = UNITY_ACCESS_INSTANCED_PROP(Props, _StrideSpeed);
                half sinUse = sin(-_Time.y * waveSpeed * _WaveDensity);			
                float normalizedPos = (v.vertex.x - _Yoffset) * 2.0 - 1.0;
                float distanceFromCenter = abs(normalizedPos);
				half yDirScaling = distanceFromCenter - _EffectRadius;
				v.vertex.y = v.vertex.y + sinUse * _WaveHeight * yDirScaling;
				v.vertex.y = v.vertex.y + sin(-_Time.y * strideSpeed ) * _StrideStrength;


				o.vertex = TransformObjectToHClip(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                o.positionWS = v.positionWS;
                VertexNormalInputs vertexNormalInput = GetVertexNormalInputs(v.normalOS, v.tangentOS);
                Light mainLight = GetMainLight();
                float3x3 tangentMat = float3x3(vertexNormalInput.tangentWS, vertexNormalInput.bitangentWS, vertexNormalInput.normalWS);
                o.lightTS = mul(tangentMat, mainLight.direction);
                
                return o;
            }

            half4 frag (v2f i) : SV_Target
            {
                UNITY_SETUP_INSTANCE_ID(i);
                // sample the texture
                half4 col = tex2D(_MainTex, i.uv);
                // float3 normal = UnpackNormal(tex2D(_NormalMap, i.uv));
                // float diff = saturate(dot(i.lightTS, normal));
                // col += diff;
                // int pixelLightCount = GetAdditionalLightsCount();
                // for (int j = 0; j < pixelLightCount; ++j)
                // {
                //     Light light = GetAdditionalLight(j, i.positionWS);
                //     half NdotL = saturate(dot(i.normalWS, light.direction));
                //     half3 radiance = light.color * ((light.distanceAttenuation * light.shadowAttenuation) * NdotL);
                //     col += half4(radiance,1.);
                // }
               
                return col;
            }
            ENDHLSL
        }
    }
}
