using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoStuffThing : MonoBehaviour
{
    [SerializeField] ObjectSetRuntime runtime;
    
    public void DisableRandom()
    {        
        int index = Random.Range(0, runtime.objects.Count);
        runtime.objects[index].gameObject.SetActive(false);
    }
}
