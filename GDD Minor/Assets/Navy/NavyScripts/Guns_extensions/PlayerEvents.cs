using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;
public class PlayerEvents : MonoBehaviour
{
    [SerializeField] UnityEvent onFire;    
    [SerializeField] UnityEvent onPause;    
    [SerializeField] UnityEvent onInteract;    

    void OnFire()
    {
        onFire.Invoke();        
    }
    void OnPause()
    {
        onPause.Invoke();       
    }   

    void OnInteract()
    {
        onInteract.Invoke();
    }
}
