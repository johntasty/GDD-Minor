using System;


[Serializable]
public class Reference
{
    public bool UseConstant = true;
    public float ConstantValue;
    public FloatValue Variable;

    public Reference()
    {
    }
    public Reference(float val)
    {
        UseConstant = true;
        ConstantValue = val;
    }
    public float Value { get { return UseConstant ? ConstantValue: Variable.FloatVariable;}}

    public static implicit operator float(Reference refr)
    {
        return refr.Value;
    }
}
