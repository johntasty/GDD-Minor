using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Floor_Checkpoint : MonoBehaviour
{
    [SerializeField] 
    ObjectSetRuntime runtime;
    [SerializeField]
    ColliderEventObject floorUnlocked;
    [SerializeField] Color colorMesh;
    // Start is called before the first frame update
    public void UnlockFloor(int floorNumber)
    {
        runtime.Add(floorNumber);
        floorUnlocked.RaiseEvent(floorNumber);
        
    }
    public void CheckpointColor(MeshRenderer mesh)
    {
        mesh.material.color = colorMesh;
    }

}
