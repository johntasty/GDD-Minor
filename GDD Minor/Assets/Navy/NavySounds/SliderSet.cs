
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class SliderSet : MonoBehaviour
{
    Slider sliderC;
    [SerializeField] FloatValue valueReference;
    // Start is called before the first frame update
    void Start()
    {
        sliderC = GetComponent<Slider>();
        sliderC.value = valueReference.FloatVariable;
    }
    public void SetText(TMP_Text textTo)
    {
        float valuePercent = ((sliderC.value * (-1f)) / 80f) ;
        int display = (int)(Mathf.Abs(valuePercent - 1) * 100);
        textTo.text = display.ToString() + "%";
    }
}
