using UnityEngine;

public class InteractionRaycast
{
    private Camera _playerCamera;
    private float _maxInteractionDistance;

    private IObjectInteractable _lastHover;

    public float MaxInteractionDistance
    {
        get { return _maxInteractionDistance; }
        set { _maxInteractionDistance = value; }
    }
    public Camera PlayerCamera
    {
        get { return _playerCamera; }
        set { _playerCamera = value; }
    }

    public InteractionRaycast(Camera playerCamera, float maxInteractionDistance)
    {
        _playerCamera = playerCamera;
        _maxInteractionDistance = maxInteractionDistance;
    }

    /// <summary>
    /// Will cast a ray from the playercamera to check for interactable objects that the player may be looking at
    /// </summary>
    /// <returns>The object the player can interact with, or null if nothing is found.</returns>
    public IObjectInteractable Cast()
    {
        Ray ray = _playerCamera.ViewportPointToRay(new Vector3(0.5f, 0.5f, 0));
        
        bool isHit = Physics.Raycast(ray, out var hitInfo, _maxInteractionDistance);

        if (!isHit)
        {
            UnHoverLastObject();
            return null;
        }

        bool isInteractable = hitInfo.collider.TryGetComponent(out IObjectInteractable interactableObject);

        if (!isInteractable)
        {
            UnHoverLastObject();
            return null;
        }

        if (!interactableObject.IsObjectHovered())
        {
            interactableObject.Hover();
            _lastHover = interactableObject;
        }

        return isHit? interactableObject : null;
    }

    private void UnHoverLastObject()
    {
        if (_lastHover == null) return;

        _lastHover.UnHover();
        _lastHover = null;
    }
}
