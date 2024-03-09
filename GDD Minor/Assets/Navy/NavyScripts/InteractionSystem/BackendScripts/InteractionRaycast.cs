using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionRaycast : MonoBehaviour
{
    [SerializeField]
    private Camera playerCamera;
    [SerializeField] [Min(0)]
    private float maxInteractionDistance = 1f;
    [SerializeField] 
    private Color debugDrawColor = Color.red;

    private IObjectInteractable _lastHover;

    private void Update()
    {
        if (_lastHover != null && Input.GetKeyDown(KeyCode.E))
            _lastHover.Interact();
    }

    private void FixedUpdate()
    {
        Ray ray = playerCamera.ViewportPointToRay(new Vector3 (0.5f, 0.5f, 0));

        bool isHit = Physics.Raycast(ray, out var hitInfo, maxInteractionDistance);

        if (!isHit)
        {
            UnHoverLastObject();
            return;
        }
        
        bool isInteractable = hitInfo.collider.TryGetComponent(out IObjectInteractable interactableObject);

        if (!isInteractable)
        {
            UnHoverLastObject();
            return;
        }

        if (!interactableObject.IsObjectHovered())
        {
            interactableObject.Hover();
            _lastHover = interactableObject;
        }
    }

    private void UnHoverLastObject()
    {
        if (_lastHover == null) return;
            
        _lastHover.UnHover();
        _lastHover = null;
    }
    
    void OnDrawGizmos()
    {
        Gizmos.color = debugDrawColor;
        Gizmos.DrawLine(gameObject.transform.position, transform.TransformPoint(Vector3.forward * maxInteractionDistance));
    }
}
