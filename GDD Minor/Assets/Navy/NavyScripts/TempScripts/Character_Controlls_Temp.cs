using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class Character_Controlls_Temp : MonoBehaviour
{
    CharacterController PlayerController;
    [SerializeField]
    CinemachineVirtualCamera PlayerCamera;
    //player variables
    [SerializeField]
    float CharacterSpeed = 5f;

    private bool _groundedPlayer;
    private float _gravityValue = -9.81f;
    private float _verticalVelocity = 0f;

    [SerializeField]
    InputAction ActionControls;

    Vector2 _moveDirection;

    private void OnEnable()
    {
        ActionControls.Enable();
    }
    private void OnDisable()
    {
        ActionControls.Disable();
    }
    // Start is called before the first frame update
    void Start()
    {
        PlayerController = GetComponent<CharacterController>();
    }

    // Update is called once per frame
    void Update()
    {
        _moveDirection = ActionControls.ReadValue<Vector2>();
    }
    private void FixedUpdate()
    {
        _groundedPlayer = PlayerController.isGrounded;
        _verticalVelocity += _gravityValue * Time.deltaTime;

        if (_groundedPlayer && _verticalVelocity < 0f)
        {
            _verticalVelocity = 0f;
        }

        PlayerController.transform.rotation = PlayerCamera.transform.localRotation;

        Vector3 move = PlayerController.transform.forward * _moveDirection.y;
        move.y += _verticalVelocity;
        PlayerController.Move(move * Time.deltaTime * CharacterSpeed);
               
    }
}
