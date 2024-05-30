using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obj : MonoBehaviour
{
    [SerializeField] ObjectSetRuntime runtime;

    private void OnEnable()
    {
        runtime.Add(1);
    }
    private void OnDisable()
    {
        runtime.Remove(1);
    }
}
