using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(Rigidbody))]
[RequireComponent(typeof(AudioSource))]
public class PlayerController : MonoBehaviour, IDataPersistence
{
    [Header("Movement Settings")]
    [SerializeField] private float walkSpeed = 6.0f;
    [SerializeField] private float sprintSpeed = 10.0f;
    [SerializeField] private float gravityStrength = 3f;
    [SerializeField] private float groundDrag;
    [SerializeField] private float airMultiplier = 1.2f;

    [Header("Jumping Settings")]
    [SerializeField] private float jumpForce = 5.0f;
    [SerializeField] private float jumpCooldown = 0.5f;
    private bool readyToJump = true;
    private bool canDoubleJump = false;

    [Header("Input Settings")]
    private bool isSprinting = false;

    [Header("Ground Check")]
    [SerializeField] private LayerMask groundLayer;
    private bool isGrounded;

    [Header("Misc")]
    [SerializeField] private Camera playerCamera;
    [SerializeField] private MenuManager pauseMenu;
    private Rigidbody rb;
    private Vector2 movementInput;
    private AudioSource audioSource;
    
    private float horizontalInput;
    private float verticalInput;
    private Vector3 moveDirection;
    private bool gravityEnabled = true;
    
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        audioSource = GetComponent<AudioSource>();
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY | RigidbodyConstraints.FreezeRotationZ;
        rb.interpolation = RigidbodyInterpolation.Interpolate;
        rb.useGravity = false;
    }
    
    public void LoadData(GameData data)
    {
    	this.transform.position = data.playerPosition;
    	rb.velocity = Vector3.zero;
    }
    
    public void SaveData(ref GameData data)
    {
    	data.playerPosition = this.transform.position;
    }

    public void OnMove(InputValue value)
    {
        movementInput = value.Get<Vector2>();
        horizontalInput = movementInput.x;
        verticalInput = movementInput.y;
    }

    public void OnJump(InputValue value)
    {
        if (value.isPressed && readyToJump)
        {
            if (isGrounded || canDoubleJump)
            {
                Jump();
                if (!isGrounded && canDoubleJump)
                {
                    canDoubleJump = false; // Prevent further jumps
                }
            }
        }
    }

    public void OnSprint(InputValue value)
    {
        isSprinting = value.isPressed;
    }

    private void FixedUpdate()
    {
        if (!pauseMenu.isPaused)
        {
            MovePlayer();
            ApplyCustomGravity();
        }
    }

    private void Update()
    {
        CheckGrounded();
        SpeedControl();
        StateHandler();
        AdjustGroundDrag();
    }

    private void ApplyCustomGravity()
    {
        rb.AddForce(Physics.gravity * gravityStrength, ForceMode.Acceleration);
    }

    private void MovePlayer()
    {
        moveDirection = playerCamera.transform.forward * verticalInput + playerCamera.transform.right * horizontalInput;
        moveDirection.y = 0;
        
        float currentSpeed = isSprinting ? sprintSpeed : walkSpeed;
        
        if (isGrounded)
        {
            rb.AddForce(moveDirection.normalized * currentSpeed * 10f, ForceMode.Force);
        }
        else
        {
            rb.AddForce(moveDirection.normalized * currentSpeed * 10f * airMultiplier, ForceMode.Force);
        }
    }

    private void SpeedControl()
    {
        Vector3 flatVel = new Vector3(rb.velocity.x, 0f, rb.velocity.z);
        float limitSpeed = isSprinting ? sprintSpeed : walkSpeed;
        if (flatVel.magnitude > limitSpeed)
        {
            rb.velocity = new Vector3(flatVel.normalized.x * limitSpeed, rb.velocity.y, flatVel.normalized.z * limitSpeed);
        }
    }

    private void StateHandler()
    {
        if (isGrounded)
        {
            canDoubleJump = true; // Reset double jump capability when grounded
        }
    }

    private void Jump()
    {
        rb.velocity = new Vector3(rb.velocity.x, 0f, rb.velocity.z);
        rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
        readyToJump = false;
        Invoke(nameof(ResetJump), jumpCooldown);
    }

    private void ResetJump()
    {
        readyToJump = true;
    }

    private void CheckGrounded()
    {
        isGrounded = Physics.CheckBox(transform.position - new Vector3(0, 0.1f, 0), new Vector3(0.5f, 0.1f, 0.5f), Quaternion.identity, groundLayer);
        if (isGrounded)
        {
            canDoubleJump = true;
        }
    }

    private void AdjustGroundDrag()
    {
        if (isGrounded)
            rb.drag = groundDrag;
        else
            rb.drag = 0;
    }
}
