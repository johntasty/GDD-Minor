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
    [SerializeField] private MenuManager pauseMenu;

    private Rigidbody rb;
    private Vector2 movementInput;
    private Vector2 lookInput;
    private float cameraPitch = 0.0f;
    private bool isGrounded;
    private bool hasDoubleJumped = false;

    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        Cursor.lockState = CursorLockMode.Confined;
        Cursor.visible = false;
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
            Jump();
        }
        else if (!hasDoubleJumped)
        {
            Jump();
            hasDoubleJumped = true;
        }
    }

    private void Jump()
    {
        rb.AddForce(Vector3.up * jumpForce, ForceMode.VelocityChange);
    }

    void Update()
    {

        if(pauseMenu.isPaused == true)
        {
                        
            //HandleRotation();
        } else
        {
            
            //Cursor.lockState = CursorLockMode.Confined;
        }
        
        CheckGrounded();
        Vector3 movementDirection = playerCamera.transform.right * movementInput.x + playerCamera.transform.forward * movementInput.y;
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
            hasDoubleJumped = false;
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
        //jumpAmounts = 0;
        isGrounded = Physics.CheckBox(transform.position, new Vector3(0.5f, 0.1f, 0.5f), Quaternion.identity, groundLayer, QueryTriggerInteraction.Ignore);

    }
}