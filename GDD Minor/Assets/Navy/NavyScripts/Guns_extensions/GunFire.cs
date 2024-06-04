using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;
public class GunFire : MonoBehaviour
{
    [SerializeField] UnityEvent onFire;    

    void OnFire()
    {
        onFire.Invoke();        
    }

}
