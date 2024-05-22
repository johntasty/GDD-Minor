using UnityEngine;

[CreateAssetMenu(menuName = "ScriptableObjects/MaterialPropertyBlockVar", order = 1)]
public class MaterialPropertyBlockVar : ScriptableObject
{
#if UNITY_EDITOR
    [Multiline]
    public string Description = "";
#endif
    public MaterialPropertyBlock propertyBlock;

    public void Set()
    {
        if (propertyBlock == null)
            propertyBlock = new MaterialPropertyBlock();
        
    }
    
}
