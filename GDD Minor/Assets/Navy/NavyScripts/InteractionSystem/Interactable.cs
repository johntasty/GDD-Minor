using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;

public class Interactable : MonoBehaviour, IInteractable
{
    [Header("Interactable Settings")]
    public UnityEvent OnInteractEvent;
    public UnityEvent OnHover;
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