using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.PostProcessing;

public class SpeedLinesPlayer : MonoBehaviour
{
    [SerializeField]
    VolumeProfile _PostEffect;
   
    CustomVolumeFeatureLines _FeatureLines;
    CustomVolumeFeatureBlur  _FeatureBlur;
   
    Rigidbody _Rigidbody;
    public float speed;
    // Start is called before the first frame update
    void Start()
    {
        _PostEffect.TryGet(out _FeatureLines);
        _PostEffect.TryGet(out _FeatureBlur);
        _Rigidbody = GetComponent<Rigidbody>();

        _FeatureLines._LineDensity.value = 0f;
        _FeatureBlur.intensity.value = 0f;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        speed = _Rigidbody.velocity.magnitude / 6.5f;
        _FeatureLines._LineDensity.value = speed;
        _FeatureBlur.intensity.value = speed;
    }
}
