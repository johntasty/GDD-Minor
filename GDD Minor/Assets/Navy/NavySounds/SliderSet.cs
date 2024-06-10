
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using static System.Net.Mime.MediaTypeNames;

public class SliderSet : MonoBehaviour
{
    Slider sliderC;
    [SerializeField] FloatValue valueReference;
    [SerializeField] TMP_Text audioText;
    // Start is called before the first frame update
    void Start()
    {
        sliderC = GetComponent<Slider>();
        sliderC.value = valueReference.FloatVariable;
        SetText(audioText);
    }
    public void SetText(TMP_Text textTo)
    {
        float valuePercent = ((sliderC.value * (-1f)) / 80f) ;
        int display = (int)(Mathf.Abs(valuePercent - 1) * 100);
        textTo.text = display.ToString() + "%";
    }
}
