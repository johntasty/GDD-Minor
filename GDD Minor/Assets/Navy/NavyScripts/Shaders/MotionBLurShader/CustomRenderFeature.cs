using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class CustomRenderFeature : ScriptableRendererFeature
{
    
    class CustomRenderPass : ScriptableRenderPass
    {
        RenderTargetIdentifier source;
        RenderTargetIdentifier destinationA;
        RenderTargetIdentifier destinationB;
        RenderTargetIdentifier latestDest;

        readonly int temporaryRTIdA = Shader.PropertyToID("_TempRT");
        readonly int temporaryRTIdB = Shader.PropertyToID("_TempRTB");

        Material material;
        Material materialBlur;
        int ShaderIntensity;
        int ShaderIntensityBlur;
        int ShaderColor;
        int ShaderRadial;
        int ShaderLenght;
        int MaskCenterSize;
        int MaskEdge;
        int LineDensity;
        int LineFallOff;
        int RotationSpeed;
        public CustomRenderPass(Material mat, Material mat2)
        {            
            material = mat;
            ShaderIntensity = Shader.PropertyToID("_Intensity");
            ShaderColor = Shader.PropertyToID("_OverlayColor");
            ShaderRadial = Shader.PropertyToID("_Radial");
            ShaderLenght = Shader.PropertyToID("_Lenght");

            MaskCenterSize = Shader.PropertyToID("_MaskCenterSize");
            MaskEdge       = Shader.PropertyToID("_MaskEdge");
            LineDensity    = Shader.PropertyToID("_LineDensity");
            LineFallOff    = Shader.PropertyToID("_LineFallOff");
            RotationSpeed = Shader.PropertyToID("_RotationSpeed");

            materialBlur = mat2;
           
        }
        // This method is called before executing the render pass.
        // It can be used to configure render targets and their clear state. Also to create temporary render target textures.
        // When empty this render pass will render to the active camera render target.
        // You should never call CommandBuffer.SetRenderTarget. Instead call <c>ConfigureTarget</c> and <c>ConfigureClear</c>.
        // The render pipeline will ensure target setup and clearing happens in a performant manner.
        public override void OnCameraSetup(CommandBuffer cmd, ref RenderingData renderingData)
        {
            RenderTextureDescriptor descriptor = renderingData.cameraData.cameraTargetDescriptor;
            descriptor.depthBufferBits = 0; 

            var renderer = renderingData.cameraData.renderer;
            source = renderer.cameraColorTarget;

            cmd.GetTemporaryRT(temporaryRTIdA, descriptor, FilterMode.Bilinear);
            destinationA = new RenderTargetIdentifier(temporaryRTIdA);
            cmd.GetTemporaryRT(temporaryRTIdB, descriptor, FilterMode.Bilinear);
            destinationB = new RenderTargetIdentifier(temporaryRTIdB);


        }

        // Here you can implement the rendering logic.
        // Use <c>ScriptableRenderContext</c> to issue drawing commands or execute command buffers
        // https://docs.unity3d.com/ScriptReference/Rendering.ScriptableRenderContext.html
        // You don't have to call ScriptableRenderContext.submit, the render pipeline will call it at specific points in the pipeline.
        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {            
            if (material == null)
            {
                Debug.LogError("Custom Post Processing Materials instance is null");
                return;
            }

            CommandBuffer cmd = CommandBufferPool.Get("Custom Post Processing");
            cmd.Clear();

            VolumeStack stack = VolumeManager.instance.stack;

            void BlitTo(Material mat, int pass = 0)
            {
                var first = latestDest;
                var last = first == destinationA ? destinationB : destinationA;
                Blit(cmd, first, last, mat, pass);

                latestDest = last;
            }

            latestDest = source;

            //custom effect set up
            var customEffect = stack.GetComponent<CustomVolumeFeatureLines>();            

            if (customEffect.IsActive()) 
            {
                material.SetFloat(ShaderIntensity, customEffect.intensity.value);
                material.SetColor(ShaderColor, customEffect.overLayColor.value);
                material.SetFloat(ShaderRadial, customEffect.radial.value);
                material.SetFloat(ShaderLenght, customEffect.LineThickness.value);

                material.SetFloat(MaskCenterSize, customEffect._MaskCenterSize.value);
                material.SetFloat(MaskEdge, customEffect._MaskEdge.value);
                material.SetFloat(LineDensity, customEffect._LineDensity.value);
                material.SetFloat(LineFallOff, customEffect._LineFallOff.value);
                material.SetFloat(RotationSpeed, customEffect._RotationSpeed.value);

                BlitTo(material);
            }

            var customEffectBlur = stack.GetComponent<CustomVolumeFeatureBlur>();
            if (customEffectBlur.IsActive())
            {
                materialBlur.SetFloat("_Intensity", customEffectBlur.intensity.value);               
                materialBlur.SetFloat("_Samples", customEffectBlur._Samples.value);               
                materialBlur.SetFloat("_Lenght", customEffectBlur._Strenght.value);               
                materialBlur.SetFloat("_Radius", customEffectBlur._Radius.value);               
                materialBlur.SetFloat("_MaskCenterSize", customEffectBlur._MaskCenterSize.value);
                materialBlur.SetFloat("_MaskEdge", customEffectBlur._MaskEdge.value);


                BlitTo(materialBlur);
            }

            Blit(cmd, latestDest, source);



            context.ExecuteCommandBuffer(cmd);
            CommandBufferPool.Release(cmd);
        }

        // Cleanup any allocated resources that were created during the execution of this render pass.
        public override void OnCameraCleanup(CommandBuffer cmd)
        {
            cmd.ReleaseTemporaryRT(temporaryRTIdA);
            cmd.ReleaseTemporaryRT(temporaryRTIdB);
        }
    }

    CustomRenderPass m_ScriptablePass;
    public RenderPassEvent m_PassEvent;
    public Material m_Material;
    public Material m_MaterialBlurr;

    /// <inheritdoc/>
    public override void Create()
    {
        m_ScriptablePass = new CustomRenderPass(m_Material, m_MaterialBlurr);

        // Configures where the render pass should be injected.
        m_ScriptablePass.renderPassEvent = m_PassEvent;
    }

    // Here you can inject one or multiple render passes in the renderer.
    // This method is called when setting up the renderer once per-camera.
    public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
    {
        renderer.EnqueuePass(m_ScriptablePass);
    }
}


