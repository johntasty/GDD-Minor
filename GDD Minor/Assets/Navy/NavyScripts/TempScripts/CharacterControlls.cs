using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class CharacterControlls : MonoBehaviour
{
    CharacterController p_PlayerController;
    [SerializeField]
    CinemachineVirtualCamera p_Camera;
    //player variables
    [SerializeField]
    float p_Speed = 5f;

    private bool groundedPlayer;
    private float gravityValue = -9.81f;
    private float verticalVelocity = 0f;

    [SerializeField]
    InputAction m_ActionControls;

    Vector2 direction;

    private void OnEnable()
    {
        m_ActionControls.Enable();
    }
    private void OnDisable()
    {
        m_ActionControls.Disable();
    }
    // Start is called before the first frame update
    void Start()
    {
        p_PlayerController = GetComponent<CharacterController>();
    }

    // Update is called once per frame
    void Update()
    {
        direction = m_ActionControls.ReadValue<Vector2>();
    }
    private void FixedUpdate()
    {
        groundedPlayer = p_PlayerController.isGrounded;
        verticalVelocity += gravityValue * Time.deltaTime;

        if (groundedPlayer && verticalVelocity < 0f)
        {
            verticalVelocity = 0f;
        }

        p_PlayerController.transform.rotation = p_Camera.transform.localRotation;

        Vector3 move = p_PlayerController.transform.forward * direction.y;
        move.y += verticalVelocity;
        p_PlayerController.Move(move * Time.deltaTime * p_Speed);
               
    }
}
