using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ImageFill : MonoBehaviour
{
    [SerializeField] ReferenceFloat FloatValue;
    [SerializeField] ReferenceFloat Min;
    [SerializeField] ReferenceFloat Max;
    [SerializeField] Image Image;

    private void Update()
    {
        Image.fillAmount = Mathf.Clamp01(
            Mathf.InverseLerp(Min,Max,FloatValue));
    }
}
