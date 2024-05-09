using System;
using UnityEditor;
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
    [SerializeField] private float cayoteTime = 0.15f;
    [SerializeField] private float jumpBufferDuration = 0.15f;
    private float LastJumpPressTime = 0;
    private bool readyToJump = true;
    private bool canDoubleJump = false;

    [Header("Input Settings")]
    private bool isSprinting = false;

    [Header("Ground Check")]
    [SerializeField] private LayerMask groundLayer;
    private bool isGrounded;
    
    [Header("Slope Handling")]
    public float maxSlopeAngle;
    private RaycastHit slopeHit;
    private bool exitingSlope;
    
    [Header("Grappling Hook Settings")] // Added some comments here because even I got confused by them :)
    [SerializeField] private float grappleCooldown = 2f; // The cooldown time in seconds that the player must wait before being able to use the grappling hook again after it has been used.
    [SerializeField] private AnimationCurve grappleAccelerationCurve; // An animation curve that allows the designer to visually edit how the grapple speed accelerates over the duration of the grapple. This is used to make the grappling feel more dynamic.
    [SerializeField]private float grappleSpeed = 10f; // The base speed of the grapple when it is first initiated. This speed is modified by the grappleAccelerationCurve as the grapple continues.
    private Transform grapplePoint; // A reference to the transform of the target object that the grappling hook attaches to. This could be any dynamic object in the game scene, like a flying book.
    private float lastGrappleTime = -Mathf.Infinity; // The time at which the last grapple was initiated. This is used to enforce the grappleCooldown period.
    private bool isGrappling = false; // A boolean flag indicating whether the player is currently using the grappling hook. This is used to control game logic in Update or FixedUpdate methods.
    private Vector3 grappleTarget; // The current target position of the grapple. If the grapplePoint is a moving object, this position is updated every frame to ensure the player moves towards the current position of the target.
    private float grappleTime = 0f; // A timer that tracks the duration of the current grapple from start to finish. Used with the grappleAccelerationCurve to calculate the current speed.
    private float startGrappleDistance;
    
    [Header("Misc")]
    [SerializeField] private Camera playerCamera;

    private Rigidbody rb;
    private Vector2 movementInput;
    private AudioSource audioSource;
    
    private float lastTimeGrounded;

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
        rb.useGravity = false;
        this.enabled = true;
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

    private void Update()
    {
        CheckGrounded();
        SpeedControl();
        StateHandler();
        AdjustGroundDrag();
        if (isGrappling) {
            GrappleMove();
        }
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
    
    public void OnGrapple(InputValue value) {
        bool isPressed = value.isPressed;
        if (Time.time - lastGrappleTime > grappleCooldown && isPressed && !isGrappling) {
            StartGrapple();
        } else if (!isPressed && isGrappling) {
            ReleaseGrapple();
        }
    }

    private void StartGrapple() {
        RaycastHit hit;
        Vector3 rayOrigin = playerCamera.transform.position + playerCamera.transform.forward * 0.5f;
        int layerMask = 1 << LayerMask.NameToLayer("GrapplingPoint");

        if (Physics.Raycast(rayOrigin, playerCamera.transform.forward, out hit, 100.0f, layerMask)) {
            if (hit.point.y > transform.position.y) {
                lastGrappleTime = Time.time;
                Debug.DrawLine(rayOrigin, hit.point, Color.red, 5f);
                Debug.DrawRay(hit.point, Vector3.up * 1, Color.blue, 5f);
                Debug.Log("Hit: " + hit.collider.name + ", Point: " + hit.point + ", Distance: " + hit.distance);

                grapplePoint = hit.transform;
                grappleTarget = grapplePoint.position;
                startGrappleDistance = Vector3.Distance(transform.position, grappleTarget);
                isGrappling = true;
                rb.velocity = Vector3.zero;
                Debug.Log("Grapple started to: " + grappleTarget);
            }
        } else {
            Debug.Log("No hit");
        }
    }
    
    private void GrappleMove() {
        if (grapplePoint != null) {
            grappleTarget = grapplePoint.position;
        }
        float currentDistance = Vector3.Distance(transform.position, grappleTarget);
        grappleTime += Time.deltaTime;
        
        currentDistance = Mathf.Min(currentDistance, startGrappleDistance);
    
        float normalizedDistance = 1 - (currentDistance / startGrappleDistance);
        float curveSpeed = grappleAccelerationCurve.Evaluate(normalizedDistance) * grappleSpeed;
        Vector3 direction = (grappleTarget - transform.position).normalized;
    
        rb.velocity = Vector3.Lerp(rb.velocity, direction * curveSpeed, Time.deltaTime * 10);
    
        if (currentDistance < 2f || transform.position.y >= grapplePoint.position.y) {
            ReleaseGrapple();
        }
    }

    private void ReleaseGrapple() {
        isGrappling = false;
        grappleTime = 0f;
        lastGrappleTime = Time.time;
        rb.velocity = new Vector3(rb.velocity.x, rb.velocity.y * 1.25f, rb.velocity.z);
    }
    
    public void JumpBuffer() {
        if (Time.time - LastJumpPressTime <= jumpBufferDuration) {
            tryToJump();
        }
    }

    public void OnJump(InputValue value)
    {
        if (value.isPressed) {
            LastJumpPressTime = Time.time;
            tryToJump();
        }

    }

    private void tryToJump() {
        if (readyToJump && !isGrappling)
        {
            if (CheckCayoteJump() || canDoubleJump)
            {
                Jump();
                if (!CheckCayoteJump() && canDoubleJump)
                {
                    canDoubleJump = false; // Prevent further jumps
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
    }
    
    public void OnMove(InputValue value)
    {
        movementInput = value.Get<Vector2>();
        horizontalInput = movementInput.x;
        verticalInput = movementInput.y;
    }
    
    private void MovePlayer()
    {
        
        if (isGrappling) {
            return;
        }
        
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
}
