using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;

public class Interactable : MonoBehaviour, IInteractable
{

    [Header("Called when the player presses the interact button")]
    public UnityEvent OnInteractEvent;

    [Header("Called when the player looks at or gets near this object")]
    public UnityEvent OnHover;
    
    [Header("Called when the player stops looking at at or gets too far from this object")]
    public UnityEvent OnUnHover;

    private bool _isObjectHovered = false;
    
    public void Interact()
    {
        OnInteractEvent.Invoke();
    }

    public void Hover()
    {
        _isObjectHovered = true;
        OnHover.Invoke();
    }

    public void UnHover()
    {
        _isObjectHovered = false;
        OnUnHover.Invoke();
    }

    public bool IsObjectHovered()
    {
        return _isObjectHovered;
    }
}