using UnityEngine;

[CreateAssetMenu(menuName = "ScriptableObjects/Float_Variable", order = 1)]
public class FloatValue : ScriptableObject
{
#if UNITY_EDITOR
    [Multiline]
    public string Description = "";
#endif
    public float FloatVariable;

    public void Set(float value)
    {
        FloatVariable = value;
    }
    public void Set(FloatValue value)
    {
        FloatVariable = value.FloatVariable;
    }
    public void Change(float value)
    {
        FloatVariable += value;
    }
    public void Change(FloatValue value)
    {
        FloatVariable += value.FloatVariable;
    }
}
