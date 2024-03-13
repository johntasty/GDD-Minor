using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class Input_Interaction : MonoBehaviour
{
    [SerializeField]
    float maxInteractionDistance = 3f;
    [SerializeField]
    LayerMask interactableLayers;

    private InteractionRaycast _interactionRaycast;
    private IObjectInteractable interactable = null;
    private Camera playerCamera;

    public void OnInteract(InputValue value)
    {
        interactable = _interactionRaycast.Cast();

        if (interactable == null) return;

        interactable.Interact();
    }
    void Awake()
    {
        playerCamera = Camera.main;
        _interactionRaycast = new(playerCamera, maxInteractionDistance, interactableLayers);
    }

}
