using System;


[Serializable]
public class ReferenceInt
{
    public bool UseConstant = true;
    public int ConstantValue;
    public IntValue Variable;

    public ReferenceInt()
    {
    }
    public ReferenceInt(int val)
    {
        UseConstant = true;
        ConstantValue = val;
    }
    public int Value { get { return UseConstant ? ConstantValue: Variable.IntVariable;}}

    public static implicit operator int(ReferenceInt refr)
    {
        return refr.Value;
    }
}
