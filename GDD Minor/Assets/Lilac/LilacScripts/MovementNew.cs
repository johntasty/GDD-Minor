using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class MovementNew : MonoBehaviour
{
    private Rigidbody rb;
    private Vector2 movementAxis;
    [SerializeField] private float speed;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void OnLook(InputValue rot) {
        //Debug.Log("You code the mouse input here");
    }

    void OnMove(InputValue pos) {
        Vector2 inputPos = pos.Get<Vector2>();
        movementAxis.x = inputPos.x;
        movementAxis.y = inputPos.y;
    }

    void OnJump() {
        Debug.Log("You code the jump input here");
    }

    void Update() {
        Vector3 playerPosition = transform.position;
        playerPosition.x += movementAxis.x * speed * Time.deltaTime;
        playerPosition.z += movementAxis.y * speed * Time.deltaTime;
        rb.MovePosition(playerPosition);
    }
}
