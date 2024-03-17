using System;
using System.Reflection;
using System.Collections.Generic;
using UnityEngine.Rendering.Universal;
using UnityEngine.Rendering;
using UnityEngine;

[Serializable, VolumeComponentMenu("Motion Blur from PPSv2")]
public sealed class MotionFeature : VolumeComponent, IPostProcessComponent
{
    /// <summary>
    /// The strength of the motion blur filter. Acts as a multiplier for velocities.
    /// </summary>
    [Tooltip("The quality of the effect. Lower presets will result in better performance at the expense of visual quality.")]
    public ClampedFloatParameter shutterAngle = new ClampedFloatParameter(0f, 0f, 360f);

    /// <summary>
    /// The quality of the effect.
    /// </summary>
    [Tooltip("The strength of the motion blur filter. Acts as a multiplier for velocities.")]
    public ClampedIntParameter sampleCount = new ClampedIntParameter(10, 4, 32);

    /// <summary>
    /// Is the component active?
    /// </summary>
    /// <returns>True is the component is active</returns>
    public bool IsActive() => shutterAngle.value > 0f && this.active;

    /// <summary>
    /// Is the component compatible with on tile rendering
    /// </summary>
    /// <returns>false</returns>
    public bool IsTileCompatible() => false;
}
