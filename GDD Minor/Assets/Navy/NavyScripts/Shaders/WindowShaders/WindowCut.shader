
Shader "Unlit/WindowCut"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _Cull("__cull", Float) = 2.0
        _Ref("__Ref", Float) = 2.0
        
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" "Queue"="Geometry-1" }
        LOD 100
        ColorMask 0
        ZWrite off
        Stencil
        {
            Ref [_Ref]
            Comp always
            Pass replace
        }
        Pass
        {
            Cull[_Cull]
            ZTest Less

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            #pragma multi_compile_fog
            #pragma shader_feature _Ref_ON
            
            //--------------------------------------
            // GPU Instancing
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

            v2f vert (appdata v)
            {
                v2f o;
                UNITY_SETUP_INSTANCE_ID(v);
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
