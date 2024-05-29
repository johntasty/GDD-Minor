using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Windows;

public class DoStuffThing : MonoBehaviour
{
    [SerializeField] ObjectSetRuntime runtime;
    
    public void DisableRandom()
    {        
        int index = Random.Range(0, runtime.objects.Count);
        int temp = (int)runtime.objects[index];
        
        //runtime.objects[index].gameObject.SetActive(false);
    }
   
}
