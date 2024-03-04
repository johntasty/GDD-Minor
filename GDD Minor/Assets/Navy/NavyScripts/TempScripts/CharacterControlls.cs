using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class CharacterControlls : MonoBehaviour
{
    CharacterController m_Player;
    [SerializeField]
    CinemachineVirtualCamera m_Camera;
    //player variables
    [SerializeField]
    float m_Speed = 5f;

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
        m_Player = GetComponent<CharacterController>();
    }

    // Update is called once per frame
    void Update()
    {
        direction = m_ActionControls.ReadValue<Vector2>();
    }
    private void FixedUpdate()
    {
        groundedPlayer = m_Player.isGrounded;
        verticalVelocity += gravityValue * Time.deltaTime;

        if (groundedPlayer && verticalVelocity < 0f)
        {
            verticalVelocity = 0f;
        }

        m_Player.transform.rotation = m_Camera.transform.rotation;

        Vector3 move = m_Player.transform.forward * direction.y;
        move.y += verticalVelocity;
        m_Player.Move(move * Time.deltaTime * m_Speed);
               
    }
}
