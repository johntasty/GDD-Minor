using UnityEngine;

[CreateAssetMenu(menuName = "ScriptableObjects/String_Variable", order = 1)]
public class StringValue : ScriptableObject
{
    [SerializeField]
    private string stringVariable = " ";

    public string StringVariable { get { return stringVariable; } set { this.stringVariable = value; } } 

}
