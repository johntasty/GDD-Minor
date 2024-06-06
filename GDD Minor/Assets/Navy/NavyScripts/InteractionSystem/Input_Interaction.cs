using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;

public class Input_Interaction : MonoBehaviour
{
    [SerializeField]
    float maxInteractionDistance = 3f;
    [SerializeField]
    LayerMask interactableLayers;
    [SerializeField]UnityEvent interactionEvent;
    private InteractionRaycast _interactionRaycast;
    private IObjectInteractable interactable = null;
    public Camera playerCamera;

    public void OnInteract(InputValue value)
    {
        interactable = _interactionRaycast.Cast();

        if (interactable == null) return;

        interactable.Interact();
        interactionEvent.Invoke();
    }
    void Awake()
    {
        playerCamera = Camera.main;
        _interactionRaycast = new(playerCamera, maxInteractionDistance, interactableLayers);
    }
    private void FixedUpdate()
    {        
        interactable = _interactionRaycast.Cast();
        if (interactable == null) return;

    }

}
