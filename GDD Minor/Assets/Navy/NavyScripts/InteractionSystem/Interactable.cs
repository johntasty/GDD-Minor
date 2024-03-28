using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;

public class Interactable : MonoBehaviour, IObjectInteractable
{
    [Header("Interactable Settings")]
    [SerializeField]
    private UnityEvent onInteractEvent;
    [SerializeField]
    private UnityEvent onHoverEvent;
    [SerializeField]
    private UnityEvent onUnHoverEvent;

    private bool _isObjectHovered = false;
    
    public void Interact()
    {
        onInteractEvent.Invoke();
    }

    public void Hover()
    {
        _isObjectHovered = true;
        onHoverEvent.Invoke();
    }

    public void UnHover()
    {
        _isObjectHovered = false;
        onUnHoverEvent.Invoke();
    }

    public bool IsObjectHovered()
    {
        return _isObjectHovered;
    }
}