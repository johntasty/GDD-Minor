using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;

public class Interactable : MonoBehaviour, IObjectInteractable
{
    [FormerlySerializedAs("OnInteractEvent")]
    [Header("Interactable Settings")]
    [SerializeField]
    private UnityEvent onInteractEvent;
    [SerializeField]
    private UnityEvent onHover;
    [SerializeField]
    private UnityEvent onUnHover;

    private bool _isObjectHovered = false;
    
    public void Interact()
    {
        onInteractEvent.Invoke();
    }

    public void Hover()
    {
        _isObjectHovered = true;
        onHover.Invoke();
    }

    public void UnHover()
    {
        _isObjectHovered = false;
        onUnHover.Invoke();
    }

    public bool IsObjectHovered()
    {
        return _isObjectHovered;
    }
}