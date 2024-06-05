using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ImageFill : MonoBehaviour
{
    [SerializeField] ReferenceFloat FloatValue;
    [SerializeField] ReferenceFloat Min;
    [SerializeField] ReferenceFloat Max;

    [SerializeField] Image Image;
    [SerializeField] TMP_Text healthText;

    private void Update()
    {
        Image.fillAmount = Mathf.Clamp01(
            Mathf.InverseLerp(Min,Max,FloatValue));
        healthText.text = FloatValue.Value.ToString()+ "/" + Max.Value.ToString();
    }
}
