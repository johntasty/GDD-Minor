using System;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

[Serializable, VolumeComponentMenuForRenderPipeline("Custom/VolumeFeatureBlur", typeof(UniversalRenderPipeline))]
public class CustomVolumeFeatureBlur : VolumeComponent, IPostProcessComponent
{
    [Header("Radial Blurring Effect.")]
    [Tooltip("Effect power, 0 means off.")]
    public ClampedFloatParameter intensity = new ClampedFloatParameter(value: 0, min: 0, max: 1, overrideState: true);
    [Tooltip("Texture samples to get, high numbers reduce performance.")]
    public ClampedFloatParameter _Samples = new ClampedFloatParameter(value: 0, min: 0, max: 25, overrideState: true);
    [Tooltip("The strenght of the blur.")]
    public ClampedFloatParameter _Strenght = new ClampedFloatParameter(value: 0, min: 0, max: 1, overrideState: true);
    [Tooltip("The radius between the edge and center for the blurring.")]
    public ClampedFloatParameter _Radius = new ClampedFloatParameter(value: 0, min: 0, max: 20, overrideState: true);
    [Tooltip("The size of the circle where the blurring shouldn't occur.")]
    public ClampedFloatParameter _MaskCenterSize = new ClampedFloatParameter(value: 0, min: 0, max: 1, overrideState: true);
    [Tooltip("The edge of the circle where the blurring occurs.")]
    public ClampedFloatParameter _MaskEdge = new ClampedFloatParameter(value: 0, min: 0, max: 1, overrideState: true);
    public bool IsActive() => intensity.value > 0;


    public bool IsTileCompatible() => true;

}
