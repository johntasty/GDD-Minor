using UnityEngine;

[CreateAssetMenu(menuName = "ScriptableObjects/Int_Variable", order = 1)]
public class IntValue : ScriptableObject
{
#if UNITY_EDITOR
    [Multiline]
    public string Description = "";
#endif
    public int IntVariable;

    public void Set(int value)
    {
        IntVariable = value;
    }
    public void Set(IntValue value)
    {
        IntVariable = value.IntVariable;
    }
    public void Change(int value)
    {
        IntVariable += value;
    }
    public void Change(IntValue value)
    {
        IntVariable += value.IntVariable;
    }
}
