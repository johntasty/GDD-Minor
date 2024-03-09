using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 5.0f;
    [SerializeField] private float jumpForce = 5.0f;
    [SerializeField] private LayerMask groundLayer;
    [SerializeField] private Camera playerCamera;
    [SerializeField] private float lookSpeed = 2.0f;
    [SerializeField] private float groundDeceleration = 0.9f; // How quickly velocity decreases on ground
    [SerializeField] private float airDeceleration = 0.99f; // How quickly velocity decreases in the air
    [SerializeField] private float airControl = 0.5f; // Degree of control in the air, 0 to 1

    private Rigidbody rb;
    private Vector2 movementInput;
    private Vector2 lookInput;
    private float cameraPitch = 0.0f;
    private bool isGrounded;

    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        Cursor.lockState = CursorLockMode.Locked;
        rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY | RigidbodyConstraints.FreezeRotationZ;
    }

    public void OnMove(InputValue value)
    {
        movementInput = value.Get<Vector2>();
    }

    public void OnJump(InputValue value)
    {
        if (isGrounded)
        {
            rb.AddForce(Vector3.up * jumpForce, ForceMode.VelocityChange);
        }
    }

    void Update()
    {
        HandleRotation();
    }

    public void OnLook(InputValue value)
    {
        lookInput = value.Get<Vector2>();
    }

    private void HandleRotation()
    {
        var horizontalRotation = lookInput.x * lookSpeed / 10;
        transform.Rotate(0, horizontalRotation, 0);

        cameraPitch -= lookInput.y * lookSpeed / 10;
        cameraPitch = Mathf.Clamp(cameraPitch, -90f, 90f);
        playerCamera.transform.localEulerAngles = new Vector3(cameraPitch, 0, 0);
    }

    void FixedUpdate()
    {
        CheckGrounded();
        Vector3 movementDirection = transform.right * movementInput.x + transform.forward * movementInput.y;
        movementDirection.Normalize();

        if (isGrounded)
        {
            // Apply ground movement
            Vector3 targetVelocity = movementDirection * moveSpeed;
            Vector3 velocityChange = targetVelocity - new Vector3(rb.velocity.x, 0, rb.velocity.z);
        
            velocityChange.x *= groundDeceleration;
            velocityChange.z *= groundDeceleration;

            rb.AddForce(velocityChange, ForceMode.VelocityChange);
        }
        else
        {
            // While in the air, the player's existing horizontal velocity is slightly adjusted towards the target velocity based on airControl, but deceleration is applied
            Vector3 currentHorizontalVelocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
            Vector3 targetVelocity = movementDirection * moveSpeed * airControl;
            Vector3 adjustedVelocity = Vector3.Lerp(currentHorizontalVelocity, targetVelocity, airControl * Time.fixedDeltaTime);

            // Apply air deceleration to the adjusted velocity
            adjustedVelocity = adjustedVelocity * airDeceleration;

            // Update the Rigidbody's velocity, preserving vertical velocity for gravity
            rb.velocity = new Vector3(adjustedVelocity.x, rb.velocity.y, adjustedVelocity.z);
        }
    }

    private void CheckGrounded()
    {
        isGrounded = Physics.CheckSphere(transform.position, 0.1f, groundLayer, QueryTriggerInteraction.Ignore);
    }
}