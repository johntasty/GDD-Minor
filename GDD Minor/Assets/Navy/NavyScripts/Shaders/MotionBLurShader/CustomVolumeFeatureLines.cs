using System;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

[Serializable, VolumeComponentMenuForRenderPipeline("Custom/VolumeFeatureLines", typeof(UniversalRenderPipeline))]
public class CustomVolumeFeatureLines : VolumeComponent, IPostProcessComponent
{
    [Header("Speed Lines Effect.")]
    [Tooltip("Effect power, 0 means off.")]
    public ClampedFloatParameter intensity = new ClampedFloatParameter(value: 0, min: 0, max: 1, overrideState: true);
    [HideInInspector]
    public ClampedFloatParameter radial = new ClampedFloatParameter(value: 0, min: 0, max: 1, overrideState: true);
    [Tooltip("Amount of lines and thickness.")]
    public ClampedFloatParameter LineThickness = new ClampedFloatParameter(value: 0, min: 0, max: 50, overrideState: true);
    [Tooltip("The size of the circle where lines shouldn't show.")]
    public ClampedFloatParameter _MaskCenterSize = new ClampedFloatParameter(value: 0, min: 0, max: 1, overrideState: true);
    [Tooltip("The edge of the circle where the lines show.")]
    public ClampedFloatParameter _MaskEdge       = new ClampedFloatParameter(value: 0, min: 0, max: 1, overrideState: true);
    [Tooltip("How much the lines are shown, 0 means none.")]
    public ClampedFloatParameter _LineDensity    = new ClampedFloatParameter(value: 0, min: 0.4f, max: 1, overrideState: true);
    [Tooltip("Speed of animation.")]
    public ClampedFloatParameter _RotationSpeed = new ClampedFloatParameter(value:  0, min: 0.4f, max: 1, overrideState: true);
    [Tooltip("Line smoothness.")]
    public ClampedFloatParameter _LineFallOff    = new ClampedFloatParameter(value: 0, min: 0, max: 1, overrideState: true);
    [Tooltip("Lines color.")]
    public NoInterpColorParameter overLayColor = new NoInterpColorParameter(Color.cyan);

    public bool IsActive() => intensity.value > 0;
    

    public bool IsTileCompatible() => true;    
   
}
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
