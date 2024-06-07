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

    [SerializeField] Image ImageBar;
    [SerializeField] Image ImageBar2;


    [SerializeField] Color fullColor11;
    [SerializeField] Color fullColor12;

    [SerializeField] Color fullColor2;
    [SerializeField] Color fullColor21;

    [SerializeField] Color fullColor3;
    [SerializeField] Color fullColor31;

    Color fullColor;
    Color fullColor1;
    private void Start()
    {
        fullColor = fullColor11;
        fullColor1 = fullColor12;
    }

    private void Update()
    {
        QuarterH();
        ImageBar.fillAmount = Mathf.Clamp01(
            Mathf.InverseLerp(Min,Max,FloatValue));
        ImageBar.color = fullColor;

        ImageBar2.fillAmount = Mathf.Clamp01(
            Mathf.InverseLerp(Min, Max, FloatValue));
        ImageBar2.color = fullColor1;

    }
    void QuarterH()
    {
        if(ImageBar.fillAmount < .7f && ImageBar.fillAmount > .3f)
        {
            fullColor = fullColor2;
            fullColor1 = fullColor21;

        }
        if (ImageBar.fillAmount < .3f)
        {
            fullColor = fullColor3;
            fullColor1 = fullColor31;

        }
        else {
            fullColor = fullColor11;
            fullColor1 = fullColor12;
        }
    }
}
