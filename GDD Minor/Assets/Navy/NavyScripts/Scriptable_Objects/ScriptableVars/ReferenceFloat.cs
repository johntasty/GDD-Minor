using System;


[Serializable]
public class ReferenceFloat
{
    public bool UseConstant = true;
    public float ConstantValue;
    public FloatValue Variable;

    public ReferenceFloat()
    {
    }
    public ReferenceFloat(float val)
    {
        UseConstant = true;
        ConstantValue = val;
    }
    public float Value { get { return UseConstant ? ConstantValue: Variable.FloatVariable;}}

    public static implicit operator float(ReferenceFloat refr)
    {
        return refr.Value;
    }
}
