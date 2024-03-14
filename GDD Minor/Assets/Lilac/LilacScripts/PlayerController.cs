using System;
using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 10.0f;
    [SerializeField] private float targetAirSpeed = 10.0f;
    [SerializeField] private float jumpForce = 5.0f;
    [SerializeField] private LayerMask groundLayer;
    [SerializeField] private Camera playerCamera;
    [SerializeField] private float lookSpeed = 2.0f;
    [SerializeField] private float groundDrag = 6.0f; // Adjusted for more natural deceleration
    [SerializeField] private float airDrag = 0.4f; // Adjusted for more consistent air movement
    [SerializeField] private float airControl = 0.3f; // This is now a multiplier for how much control you have in the air
    [SerializeField] private float maxAirSpeed = 5.0f; // Max speed in air to prevent excessive acceleration
    [SerializeField] private float additionalGravityFactor = 2.0f; // Adjust this value to control the fall speed
    [SerializeField] private MenuManager pauseMenu;

    private Rigidbody rb;
    private Vector2 movementInput;
    private bool isGrounded;
    private bool hasDoubleJumped = false;

    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY | RigidbodyConstraints.FreezeRotationZ;
        rb.interpolation = RigidbodyInterpolation.Interpolate; // Ensure smoother Rigidbody movement
        rb.useGravity = true;
    }

    public void OnMove(InputValue value)
    {
        movementInput = value.Get<Vector2>();
    }

    public void OnJump(InputValue value)
    {
        if (value.isPressed)
        {
            if (isGrounded)
            {
                Jump();
            }
            else if (!hasDoubleJumped)
            {
                Jump();
                hasDoubleJumped = true;
            }
        }
    }

    private void Jump()
    {
        // Reset vertical momentum to 0 before applying jump force
        Vector3 velocity = rb.velocity;
        velocity.y = 0; // Reset only the vertical component of the velocity
        rb.velocity = velocity; // Apply the reset velocity back to the Rigidbody

        // Now apply the jump force
        rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
    }
    
    void FixedUpdate()
    {
        if (!pauseMenu.isPaused)
        {
            MovePlayer();

            if (!isGrounded)
            {
                ApplyAirDrag(); // Apply custom air drag to horizontal movement
            }
        }
    }

    private void Update() {
        CheckGrounded();
    }

    void ApplyAirDrag()
    {
        // Calculate the horizontal velocity
        Vector3 horizontalVelocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
        // Calculate the difference between the current speed and the target speed
        float speedDifference = horizontalVelocity.magnitude - targetAirSpeed;

        // Apply air drag only if the current speed exceeds the target speed
        if (speedDifference > 0)
        {
            // Calculate the drag force as a function of the speed difference
            // The force increases as the speed difference increases
            Vector3 airDragForce = -horizontalVelocity.normalized * Mathf.Clamp(speedDifference, 0, airDrag * rb.mass) * Time.fixedDeltaTime;
            rb.AddForce(airDragForce, ForceMode.VelocityChange);
        }
    }

    private void MovePlayer()
    {
        Vector3 movementDirection = playerCamera.transform.right * movementInput.x + playerCamera.transform.forward * movementInput.y;
        movementDirection.Normalize();
        movementDirection.y = 0; // Ensure we're not adding vertical movement

        if (isGrounded)
        {
            // Calculate the force for horizontal movement
            Vector3 horizontalForce = new Vector3(movementDirection.x, 0, movementDirection.z) * moveSpeed;

            // Apply the movement force in the horizontal direction
            rb.AddForce(horizontalForce, ForceMode.Acceleration);

            // Manual horizontal drag calculation
            // Get the current horizontal velocity
            Vector3 horizontalVelocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
            // Calculate the drag force based on the current horizontal velocity and the groundDrag factor
            Vector3 dragForce = -groundDrag * horizontalVelocity * Time.fixedDeltaTime * 100;

            // Apply the drag force to simulate horizontal drag
            rb.AddForce(dragForce, ForceMode.Acceleration);
        }
        else
        {
            rb.drag = 0; // Disable Rigidbody's drag in the air to manually apply horizontal air drag.

            Vector3 currentHorizontalVelocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
            float inputMagnitude = movementInput.magnitude;
        
            // Scale the applied force by air control, allowing some influence over movement in the air.
            Vector3 targetVelocity = movementDirection * moveSpeed * airControl * inputMagnitude;
            Vector3 velocityChange = (targetVelocity - currentHorizontalVelocity) * airControl;
        
            // Apply the calculated force to adjust horizontal velocity based on air control.
            rb.AddForce(new Vector3(velocityChange.x, 0, velocityChange.z), ForceMode.Acceleration);
        }
    }

    private void CheckGrounded()
    {
        isGrounded = Physics.CheckBox(transform.position - new Vector3(0, 0.1f, 0), new Vector3(0.10f, 0.1f, 0.10f), Quaternion.identity, groundLayer, QueryTriggerInteraction.Ignore);
        if (isGrounded) hasDoubleJumped = false; // Reset double jump if grounded
    }
}