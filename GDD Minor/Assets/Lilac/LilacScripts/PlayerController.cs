using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.Serialization;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 10.0f;
    [SerializeField] private float jumpForce = 5.0f;
    [SerializeField] private LayerMask groundLayer;
    [SerializeField] private Camera playerCamera;
    [SerializeField] private float lookSpeed = 2.0f;
    [FormerlySerializedAs("groundDeceleration")] [SerializeField] private float groundDrag = 13.0f; // How quickly velocity decreases on ground
    [FormerlySerializedAs("airDeceleration")] [SerializeField] private float airDrag = 0.98f; // How quickly velocity decreases in the air
    [SerializeField] private float airControl = 200f;

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

    void Update()
    {
        HandleRotation();
        
        CheckGrounded();
        Vector3 movementDirection = transform.right * movementInput.x + transform.forward * movementInput.y;
        movementDirection.Normalize();

        if (isGrounded)
        {
            // Apply ground movement
            Vector3 targetVelocity = movementDirection * moveSpeed;
            Vector3 velocityChange = targetVelocity - new Vector3(rb.velocity.x, 0, rb.velocity.z);
        
            // Apply ground deceleration
            velocityChange.x *= groundDrag * Time.deltaTime;
            velocityChange.z *= groundDrag * Time.deltaTime;

            rb.velocity = new Vector3(rb.velocity.x + velocityChange.x, rb.velocity.y, rb.velocity.z + velocityChange.z);
        }
        else
        {
            // In the air, modify existing horizontal velocity based on air control
            Vector3 currentHorizontalVelocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
            Vector3 targetVelocity = movementDirection * moveSpeed;
            Vector3 velocityChange = Vector3.zero;

            // The influence of air control on the current direction
            velocityChange = Vector3.Lerp(currentHorizontalVelocity, targetVelocity, airControl * Time.deltaTime);

            // Apply air deceleration to gradually reduce horizontal speed
            velocityChange = velocityChange - currentHorizontalVelocity;
            velocityChange *= airDrag * Time.deltaTime;

            rb.velocity = new Vector3(rb.velocity.x + velocityChange.x, rb.velocity.y, rb.velocity.z + velocityChange.z);
        }
    }

    private void CheckGrounded()
    {
        isGrounded = Physics.CheckSphere(transform.position, 0.20f, groundLayer, QueryTriggerInteraction.Ignore);
    }
}