using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using static Unity.VisualScripting.Member;
using static UnityEditor.ShaderData;

public class OutlineFeature : ScriptableRendererFeature
{
    class CustomRenderPass : ScriptableRenderPass
    {
        RenderTargetIdentifier destinationA;
        RenderTargetIdentifier destinationB;
        RenderTargetIdentifier latestDest;
        RenderTargetIdentifier source;

        readonly int temporaryRTIdA = Shader.PropertyToID("_TempRT");
        readonly int temporaryRTIdB = Shader.PropertyToID("_TempRTB");
        Material material;
        LayerMask LayerMask;
        private FilteringSettings _filteringSettings;
        private static readonly ShaderTagId _outlineDe = new ShaderTagId("OutlineShader");
        private const string ProfilerTag = "Outline Pass";
        public CustomRenderPass(Material mat, LayerMask layerMask)
        {
            material = mat;
            LayerMask = layerMask;
            profilingSampler = new ProfilingSampler(ProfilerTag);
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

            _filteringSettings = new FilteringSettings(RenderQueueRange.all, LayerMask.value);
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
            CommandBuffer cmd = CommandBufferPool.Get();
            using (new ProfilingScope(cmd, profilingSampler))
            {
                context.ExecuteCommandBuffer(cmd);
                cmd.Clear();


                FilteringSettings filteringSettings = new FilteringSettings(RenderQueueRange.all,
                                                                            LayerMask.value,
                                                                            uint.MaxValue);
                DrawingSettings drawingSettings = CreateDrawingSettings(_outlineDe, ref renderingData, SortingCriteria.CommonOpaque);
                context.DrawRenderers(renderingData.cullResults, ref drawingSettings, ref filteringSettings);
                context.Submit();
            }
          
            context.ExecuteCommandBuffer(cmd);            
            CommandBufferPool.Release(cmd);
            
        }

        // Cleanup any allocated resources that were created during the execution of this render pass.
        public override void OnCameraCleanup(CommandBuffer cmd)
        {
            cmd.ReleaseTemporaryRT(temporaryRTIdA);
        }
    }

    CustomRenderPass m_ScriptablePass;
    public RenderPassEvent m_PassEvent;
    public Material m_Material;
    [Header("Rendering")]
    public LayerMask LayerMask = 0;
    /// <inheritdoc/>
    public override void Create()
    {
        m_ScriptablePass = new CustomRenderPass(m_Material, LayerMask);

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


