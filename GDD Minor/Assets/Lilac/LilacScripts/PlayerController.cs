using System;
using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour, IDataPersistence
{
    [SerializeField] private float moveSpeed = 10.0f;
    [SerializeField] private float sprintSpeed = 15.0f; // Adjust this value as needed
    [SerializeField] private float targetAirSpeed = 10.0f;
    [SerializeField] private float jumpForce = 5.0f;
    [SerializeField] private LayerMask groundLayer;
    [SerializeField] private Camera playerCamera;
    [SerializeField] private float groundDrag = 6.0f; // Adjusted for more natural deceleration
    [SerializeField] private float airDrag = 0.4f; // Adjusted for more consistent air movement
    [SerializeField] private float airControl = 0.3f; // This is now a multiplier for how much control you have in the air
    [SerializeField] private MenuManager pauseMenu;
    [SerializeField] private Vector3 Pvelocity;
    [SerializeField] private float lowGroundDrag;
    [SerializeField] private float highGroundDrag;
    [SerializeField] private float maxJumpForce = 10.0f; // The maximum force applied when holding the jump button
    [SerializeField] private float maxJumpTime = 0.5f; // The maximum time the jump button can be held to increase jump height

    private bool isSprinting = false;
    private bool isJumping = false;
    private float jumpTimeCounter;
    private Rigidbody rb;
    private Vector2 movementInput;
    private bool isGrounded;
    private bool hasDoubleJumped = false;

    public void LoadData(GameData data)
    {
        this.transform.position = data.playerPosition;
        rb.velocity = Vector3.zero;
    }

    public void SaveData(ref GameData data)
    {
        data.playerPosition = this.transform.position;
    }

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
            if (isGrounded || (!hasDoubleJumped && !isGrounded))
            {
                Jump();
            }
        }
        else
        {
            isJumping = false; // Reset when the jump button is released
        }
    }
    
    public void OnSprint(InputValue value)
    {
        isSprinting = value.isPressed;
    }

    private void Jump()
    {
        Vector3 jumpDirection = Vector3.up;

        if (!isGrounded)
        {
            // Adjust for mid-air jumps based on camera direction
            Vector3 forward = playerCamera.transform.forward;
            Vector3 right = playerCamera.transform.right;

            forward.y = 0;
            right.y = 0;

            forward.Normalize();
            right.Normalize();

            Vector3 intendedDirection = right / 2 * movementInput.x + forward / 2 * movementInput.y;
            intendedDirection.Normalize();

            jumpDirection += intendedDirection; // Modulate influence of camera direction in air
        }

        if (!isJumping)
        {
            rb.velocity = new Vector3(rb.velocity.x, 0, rb.velocity.z); // Reset vertical velocity
            rb.AddForce(jumpDirection * jumpForce, ForceMode.Impulse);
            isJumping = true; // Mark the player as currently jumping
            jumpTimeCounter = maxJumpTime; // Reset jump time counter

            if (!isGrounded)
            {
                hasDoubleJumped = true;
            }
        }
        else if (isJumping && jumpTimeCounter > 0)
        {
            // Apply additional force over time up to a maximum defined by maxJumpTime
            // The force is reduced as the jumpTimeCounter decreases
            float additionalJumpForce = (jumpForce + (maxJumpForce - jumpForce) * (jumpTimeCounter / maxJumpTime));
            rb.AddForce(jumpDirection * additionalJumpForce * Time.deltaTime, ForceMode.Impulse);
            jumpTimeCounter -= Time.deltaTime; // Decrement the counter
        }
    }
    
    void FixedUpdate() {
        if (!pauseMenu.isPaused) {
            MovePlayer();

            if (!isGrounded) {
                ApplyAirDrag(); // Now also handles air movement direction change
            }
        }
        if (isJumping && jumpTimeCounter > 0)
        {
            Jump(); // Continue applying jump force while the button is held
        }
    }

    private void Update() {
        CheckGrounded();
        Pvelocity = rb.velocity;
        AdjustGroundDrag();
    }
    
    private void AdjustGroundDrag() {
        if (isGrounded) {
            // Apply lower drag if moving, higher if stationary to allow for instant stopping
            rb.drag = (movementInput.magnitude > 0) ? lowGroundDrag : highGroundDrag;
        } else {
            rb.drag = airDrag; // Use air drag when not grounded
        }
    }

    private void MovePlayer() {
        // Get the right and forward direction of the camera on the horizontal plane
        Vector3 forward = playerCamera.transform.forward;
        Vector3 right = playerCamera.transform.right;
    
        // Zero out the y component to keep movement on the horizontal plane
        forward.y = 0;
        right.y = 0;
    
        forward.Normalize();
        right.Normalize();

        // Calculate movement direction based on input and camera orientation
        Vector3 movementDirection = right * movementInput.x + forward * movementInput.y;
        
        float currentSpeed = isSprinting ? sprintSpeed : moveSpeed;

        // Ground movement
        if (isGrounded) {
            Vector3 forceDirection = movementDirection * currentSpeed - rb.velocity;
            forceDirection.y = 0; // Keep vertical velocity unaffected
            rb.AddForce(forceDirection, ForceMode.VelocityChange);
        }
    }

    private void ApplyAirDrag() {
        // Calculate the intended air movement direction
        Vector3 airMovementDirection = playerCamera.transform.right * movementInput.x + playerCamera.transform.forward * movementInput.y;
        airMovementDirection.Normalize();
        airMovementDirection.y = 0; // Keep vertical movement out of our calculations

        // Calculate target velocity in the air
        Vector3 targetVelocity = airMovementDirection * targetAirSpeed;
        // Calculate the difference between current and target velocity
        Vector3 velocityDifference = targetVelocity - rb.velocity;
        velocityDifference.y = 0; // Ignore vertical velocity

        // Apply a force based on the difference, scaled by air control
        // This allows for changing direction without increasing overall speed
        rb.AddForce(velocityDifference * airControl, ForceMode.Acceleration);
    }

    private void CheckGrounded()
    {
        isGrounded = Physics.CheckBox(transform.position - new Vector3(0, -0.04f, 0), new Vector3(0.2f, 0.1f, 0.2f), Quaternion.identity, groundLayer, QueryTriggerInteraction.Ignore);
        if (isGrounded) hasDoubleJumped = false; // Reset double jump if grounded
    }
    
    void OnDrawGizmos() {
        // Set the color of the Gizmo (optional)
        Gizmos.color = Color.red;

        // Draw a cube to visualize the ground check area
        // Adjust the position and size according to your ground check logic
        Vector3 boxCenter = transform.position - new Vector3(0, -0.04f, 0);
        Vector3 boxSize = new Vector3(0.1f, 0.1f, 0.1f);

        // Actually draw the cube
        Gizmos.DrawWireCube(boxCenter, boxSize);
    }
}