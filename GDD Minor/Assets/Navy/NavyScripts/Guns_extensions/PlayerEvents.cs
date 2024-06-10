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
    [SerializeField] UnityEvent onJump;    
    [SerializeField] UnityEvent onSprint;    
    [SerializeField] UnityEvent onMove;    

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
    void OnJump(InputValue value)
    {
        if (value.isPressed) { onJump.Invoke(); }
        
    }
    void OnSprint()
    {
        onSprint.Invoke();
    }
    void OnMove(InputValue value)
    {      
        onMove.Invoke();
    }
}
