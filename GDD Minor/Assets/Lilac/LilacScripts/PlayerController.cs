using System;
using UnityEngine;
using UnityEngine.InputSystem;
using Cinemachine;
using System.Collections;

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
    [SerializeField] private float cayoteTime = 0.15f;
    [SerializeField] private float jumpBufferDuration = 0.15f;
    private float LastJumpPressTime = 0;
    private bool readyToJump = true;
    private bool canDoubleJump = false;
    private bool doubleJumpUnlocked = false;

    [Header("Input Settings")]
    private bool isSprinting = false;

    [Header("Field Of View")]
    public float walkFOV = 83f;
    public float sprintFOV = 60f;
    public float FOVChangeTime = 2f; 
    public bool dynamicFOV = true;
    [SerializeField] private CinemachineVirtualCamera cinemachineVirtualCamera;

    [Header("Ground Check")]
    [SerializeField] private LayerMask groundLayer;
    public bool isGrounded;

    [Header("Slope Handling")]
    public float maxSlopeAngle;
    private RaycastHit slopeHit;
    private bool exitingSlope;

    [Header("Grappling Hook Settings")]
    [SerializeField] Transform grapplingCamTransform;
    [SerializeField] Transform GrappleGunTip;
    [SerializeField] LineRenderer lineRenderer;
    [SerializeField] LayerMask whatIsGrappleable;
    [SerializeField] float maxGrappleDistance = 100f;
    [SerializeField] float grappleDelayTime = 0.1f;
    [SerializeField] float overshootYAxis = 5f;
    [SerializeField] float grappleCoolDown = 2f;
    private Vector3 grapplePoint;
    private float grapplingCooldownTimer;
    private bool grappling;
    private Transform targetTransform;

    [Header("Misc")]
    [SerializeField] private Camera playerCamera;

    public Rigidbody rb;
    private Vector2 movementInput;
    private AudioSource audioSource;
    private float lastTimeGrounded;

    private float horizontalInput;
    private float verticalInput;
    private Vector3 moveDirection;
    private bool gravityEnabled = true;
    private bool canPlaySound = true;
    public AudioClip walkClip;
    public AudioClip sprintClip;
    public AudioClip jumpClip;
    public AudioClip airJumpClip;

    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        audioSource = GetComponent<AudioSource>();
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY | RigidbodyConstraints.FreezeRotationZ;
        rb.useGravity = false;
        this.enabled = true;
        cinemachineVirtualCamera.m_Lens.FieldOfView = walkFOV;
    }

    private void Update()
    {
        CheckGrounded();
        SpeedControl();
        StateHandler();
        AdjustGroundDrag();
        DynamicFOV();

        if (Input.GetKeyDown(KeyCode.Mouse1) && !grappling) {
            StartGrapple();
        }

        if (grapplingCooldownTimer > 0)
            grapplingCooldownTimer -= Time.deltaTime;

        if (grappling) {
            UpdateLineRenderer();
        }

        UpdateLineRenderer();
    }
    
    private void UpdateLineRenderer()
    {
        if (lineRenderer && grappling) {
            lineRenderer.SetPosition(0, GrappleGunTip.position);
            if (targetTransform != null) {
                lineRenderer.SetPosition(1, targetTransform.position);
            } else {
                lineRenderer.SetPosition(1, grapplePoint);
            }
        }
    }

    private void ExecuteGrapple()
    {

    }

    private void JumpToPosition(Vector3 position, float height)
    {
        Vector3 jumpDirection = (position - transform.position).normalized;
        float distance = Vector3.Distance(transform.position, position);
        float velocity = Mathf.Sqrt(distance * (gravityStrength) / Mathf.Sin(2 * 45 * Mathf.Deg2Rad));

        rb.velocity = new Vector3(jumpDirection.x * velocity, height * 1.4f, jumpDirection.z * velocity);
    }

    public void OnGrapple(InputValue value)
    {
        if (value.isPressed)
        {
            StartGrapple();
        }
        else
        {
            StopGrapple();
        }
    }

    private void StartGrapple()
    {
        if (grappling || grapplingCooldownTimer > 0) return;

        RaycastHit hit;
        if (Physics.Raycast(grapplingCamTransform.position, grapplingCamTransform.forward, out hit, maxGrappleDistance, whatIsGrappleable))
        {
            SetupGrapple(hit);
        }
        else
        {
            grapplePoint = grapplingCamTransform.position + grapplingCamTransform.forward * maxGrappleDistance;
        }
    }

    private void SetupGrapple(RaycastHit hit)
    {
        grapplePoint = hit.point;
        targetTransform = hit.transform;
        lineRenderer.enabled = true;
        lineRenderer.SetPosition(0, GrappleGunTip.position);
        lineRenderer.SetPosition(1, grapplePoint);
        grappling = true;
        grapplingCooldownTimer = grappleCoolDown;
        
        Vector3 lowestPoint = new Vector3(transform.position.x, transform.position.y - 1f, transform.position.z);
        float grapplePointRelativeYPos = grapplePoint.y - lowestPoint.y;
        float highestPointOnArc = grapplePointRelativeYPos + overshootYAxis;
        if (grapplePointRelativeYPos < 0) highestPointOnArc = overshootYAxis;

        JumpToPosition(grapplePoint, highestPointOnArc);

        Invoke(nameof(StopGrapple), 1.5f);
    }

    public void StopGrapple()
    {
        grappling = false;
        targetTransform = null;
        if (lineRenderer) lineRenderer.enabled = false;
    }

    private void OnDrawGizmos() {
        Gizmos.color = Color.red;
        Gizmos.DrawWireCube(transform.position - new Vector3(0, 0.05f, 0), new Vector3(0.1f, 0.1f, 0.1f));
    }

    private void FixedUpdate()
    {
        MovePlayer();
        JumpBuffer();
        ApplyCustomGravity();
    }

    public void LoadData(GameData data)
    {
        transform.position = data.playerPosition;
        rb.velocity = Vector3.zero;
    }
    
    public void SaveData(ref GameData data)
    {
        data.playerPosition = this.transform.position;
    }
    
    public void OnJump(InputValue value)
    {
        if (value.isPressed) {
            LastJumpPressTime = Time.time;
            tryToJump();
        }

    }
    
    public void JumpBuffer() {
        if (Time.time - LastJumpPressTime <= jumpBufferDuration) {
            tryToJump();
        }
    }

    public void UnlockDoubleJump()
    {
        doubleJumpUnlocked = true;
        canDoubleJump = true; // Allow the player to double jump immediately
    }


    private void tryToJump()
    {
        if (readyToJump)
        {
            if (CheckCayoteJump() || (canDoubleJump && doubleJumpUnlocked))
            {
                Jump();
                if (!CheckCayoteJump() && canDoubleJump && doubleJumpUnlocked)
                {
                    audioSource.PlayOneShot(airJumpClip);
                    canDoubleJump = false; // Prevent further jumps
                } else {
                    audioSource.PlayOneShot(jumpClip);
                }
            }
        }
    }


    private bool CheckCayoteJump() {
        return Time.time - lastTimeGrounded <= cayoteTime;
    }
    
    private void ApplyCustomGravity()
    {
        rb.AddForce(Physics.gravity * gravityStrength, ForceMode.Acceleration);
    }

    public void OnSprint(InputValue value)
    {
        isSprinting = value.isPressed;
        
        DynamicFOV();
    }
    
    public void OnMove(InputValue value)
    {
        movementInput = value.Get<Vector2>();
        horizontalInput = movementInput.x;
        verticalInput = movementInput.y;
    }
    
    private void MovePlayer()
    {
        moveDirection = playerCamera.transform.forward * verticalInput + playerCamera.transform.right * horizontalInput;
        moveDirection.y = 0; // Keep movement horizontal

        float currentSpeed = isSprinting ? sprintSpeed : walkSpeed;
        
        if (OnSlope() && !exitingSlope)
        {
            rb.AddForce(GetSlopeMoveDirection() * (currentSpeed + 16 ) * 8f, ForceMode.Force);

            if (rb.velocity.y > 0)
                rb.AddForce(Vector3.down * 80f, ForceMode.Force);
        }
        else if (isGrounded)
        {  
            if (moveDirection.x != 0 && canPlaySound) {
                if (isSprinting) {
                    audioSource.PlayOneShot(sprintClip, 0.3f);
                    StartCoroutine(SoundCooldown(0.3f));
                } else {
                    audioSource.PlayOneShot(walkClip, 0.3f);
                    StartCoroutine(SoundCooldown(0.5f));
                }
            }
            rb.AddForce(moveDirection.normalized * currentSpeed * 10f, ForceMode.Force);
        }
        else
        {
            rb.AddForce(moveDirection.normalized * currentSpeed * 10f * airMultiplier, ForceMode.Force);
        }

        // Control gravity manually
        gravityEnabled = !OnSlope();
    }

    private void SpeedControl()
    {
        float limitSpeed = isSprinting ? sprintSpeed : walkSpeed;
        // limiting speed on slope
        if (OnSlope() && !exitingSlope) {
            if (rb.velocity.magnitude > limitSpeed)
                rb.velocity = rb.velocity.normalized * limitSpeed;
        } 
        else {
            Vector3 flatVel = new Vector3(rb.velocity.x, 0f, rb.velocity.z);
            
            if (flatVel.magnitude > limitSpeed)
            {
                rb.velocity = new Vector3(flatVel.normalized.x * limitSpeed, rb.velocity.y, flatVel.normalized.z * limitSpeed);
            }
        }
    }

    private IEnumerator SoundCooldown(float cd)
    {
        canPlaySound = false;
        yield return new WaitForSeconds(cd);
        canPlaySound = true;
    }

    private void StateHandler()
    {
        if (isGrounded)
        {
            canDoubleJump = doubleJumpUnlocked; // Reset double jump capability when grounded
        }
    }

    private void Jump()
    {
        rb.velocity = new Vector3(rb.velocity.x, 0f, rb.velocity.z);
        rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
        
        readyToJump = false;
        exitingSlope = true;
        LastJumpPressTime = 0;
        
        Invoke(nameof(ResetJump), jumpCooldown);
    }

    private void ResetJump()
    {
        readyToJump = true;
        exitingSlope = false;
    }

    private void CheckGrounded()
    {
        isGrounded = Physics.CheckBox(transform.position - new Vector3(0, 0.05f, 0), new Vector3(0.2f, 0.1f, 0.2f), Quaternion.identity, groundLayer);
        if (isGrounded)
        {
            canDoubleJump = true;
            lastTimeGrounded = Time.time;
        }
    }

    private void AdjustGroundDrag()
    {
        if (isGrounded)
            rb.drag = groundDrag;
        else
            rb.drag = 0;
    }

    private bool OnSlope()
    {
        if (Physics.Raycast(transform.position, Vector3.down, out slopeHit, 0.3f)) // Adjust 1f if needed
        {
            float angle = Vector3.Angle(Vector3.up, slopeHit.normal);
            return angle <= maxSlopeAngle && angle != 0;
        }
        return false;
    }

    private Vector3 GetSlopeMoveDirection()
    {
        return Vector3.ProjectOnPlane(moveDirection, slopeHit.normal).normalized;
    }

    private void DynamicFOV()
    {
        if (dynamicFOV)
        {
            float targetFOV = isSprinting ? sprintFOV : walkFOV;
            cinemachineVirtualCamera.m_Lens.FieldOfView = Mathf.Lerp(cinemachineVirtualCamera.m_Lens.FieldOfView, targetFOV, FOVChangeTime * Time.deltaTime);

            
        }
    }
}
