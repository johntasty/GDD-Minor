Shader "Unlit/BookVertexMovement"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _EffectRadius("Wave Effect Radius",Range(0.0,1.0)) = 0.5
		_WaveSpeed("Wave Speed", Range(0.0,100.0)) = 3.0
		_WaveHeight("Wave Height", Range(0.0,30.0)) = 5.0
		_WaveDensity("Wave Density", Range(0.0001,1.0)) = 0.007
		_Yoffset("Y Offset",Float) = 0.0
		_Threshold("Threshold",Range(0,30)) = 3 
		_StrideSpeed("Stride Speed",Range(0.0,10.0)) = 2.0
		_StrideStrength("Stride Strength", Range(0.0,20.0)) = 3.0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            #pragma multi_compile_fog
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                UNITY_FOG_COORDS(1)
                float4 vertex : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;
            half _EffectRadius;
			half _WaveSpeed;
			half _WaveHeight;
			half _WaveDensity;
			half _Yoffset;
			int _Threshold;
			half _StrideSpeed;
         	half _StrideStrength;
         	

            v2f vert (appdata v)
            {
                v2f o;
                UNITY_SETUP_INSTANCE_ID(v);
                half sinUse = sin(-_Time.y * _WaveSpeed * _WaveDensity);			
                float normalizedPos = (v.vertex.x - _Yoffset) * 2.0 - 1.0;
                float distanceFromCenter = abs(normalizedPos);
				half yDirScaling = distanceFromCenter - _EffectRadius;
				v.vertex.y = v.vertex.y + sinUse * _WaveHeight * yDirScaling;
				v.vertex.y = v.vertex.y + sin(-_Time.y * _StrideSpeed ) * _StrideStrength;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
              
                UNITY_TRANSFER_FOG(o,o.vertex);
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                // sample the texture
                fixed4 col = tex2D(_MainTex, i.uv);
                // apply fog
                UNITY_APPLY_FOG(i.fogCoord, col);
                return col;
            }
            ENDCG
        }
    }
}
