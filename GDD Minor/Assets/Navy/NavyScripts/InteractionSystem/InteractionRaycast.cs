using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionRaycast : MonoBehaviour
{
    public Camera playerCamera;
    [Min(0)]
    public float MaxInteractionDistance = 1f;

    private IInteractable _lastHover;

    private void Update()
    {
        if (_lastHover != null && Input.GetKeyDown(KeyCode.E))
            _lastHover.Interact();
    }

    private void FixedUpdate()
    {
        Ray ray = playerCamera.ViewportPointToRay(new Vector3 (0.5f, 0.5f, 0));

        bool isHit = Physics.Raycast(ray, out var hitInfo, MaxInteractionDistance);

        if (!isHit)
        {
            UnHoverLastObject();
            return;
        }
        
        bool isInteractable = hitInfo.collider.TryGetComponent(out IInteractable interactableObject);

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
}
