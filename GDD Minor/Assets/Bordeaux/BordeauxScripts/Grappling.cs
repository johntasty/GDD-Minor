using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Grappling : MonoBehaviour
{
    [Header("References")]
    private PeterMovement pm;
    public Transform cam;
    public Camera playerCam;
    public Transform gunTip;
    public LayerMask whatIsGrappleable;
    public LineRenderer lr;

    [Header("Grappling")]
    public float maxGrappleDistance;
    public float grappleDelayTime;
    public float overshootYAxis;

    private Vector3 grapplePoint;

    [Header("Cooldown")]
    public float grapplingCd;
    private float grapplingCdTimer;

    [Header("Input")]
    public KeyCode grappleKey = KeyCode.Mouse1;

    private bool grappling;
    
    
    private Collider grapplePointObjectCollider;

    private List<GameObject> grapplePoints;

    private Plane[] cameraFrustum;
    
    private void Start()
    {
        pm = GetComponent<PeterMovement>();
        playerCam = cam.GetComponent<Camera>();
        grapplePoints = new List<GameObject>(GameObject.FindGameObjectsWithTag("GrapplePoint"));
    }

    private void Update()
    {
        if (Input.GetKeyDown(grappleKey)) StartGrapple();

        if (grapplingCdTimer > 0)
            grapplingCdTimer -= Time.deltaTime;

        if (grapplePoints.Count == 0) return;
        target = FindClosestGrapplePoint();

    }

    private void LateUpdate()
    {
        if (grappling)
           lr.SetPosition(0, gunTip.position);
    }

    private void StartGrapple()
    {
        if (grapplingCdTimer > 0) return;

        grappling = true;

        pm.freeze = true;

 
            Vector3 direction = (target.transform.position - cam.position).normalized;
            RaycastHit hit;
            if (IsVisible(playerCam, target) && Physics.Raycast(cam.position, direction, out hit, maxGrappleDistance, whatIsGrappleable))
            {
                Debug.Log(hit.collider.gameObject.name);
                Debug.DrawLine(cam.position, hit.point, Color.red);

                grapplePointObjectCollider = hit.collider;
                grapplePoint = hit.point;

                Invoke(nameof(ExecuteGrapple), grappleDelayTime);
            }
            else
            {
                grapplePoint = cam.position + cam.forward * maxGrappleDistance;

                Invoke(nameof(StopGrapple), grappleDelayTime);
            }

            lr.enabled = true;
            lr.SetPosition(1, grapplePoint);
    }

    private void ExecuteGrapple()
    {
        pm.freeze = false;

        Vector3 lowestPoint = new Vector3(transform.position.x, transform.position.y - 1f, transform.position.z);

        float grapplePointRelativeYPos = grapplePoint.y - lowestPoint.y;
        float highestPointOnArc = grapplePointRelativeYPos + overshootYAxis;

        if (grapplePointRelativeYPos < 0) highestPointOnArc = overshootYAxis;

        pm.JumpToPosition(grapplePoint, highestPointOnArc);

        Invoke(nameof(StopGrapple), 1f);
        grapplePointObjectCollider.enabled = false;
    }

    public void StopGrapple()
    {
    if (grapplePointObjectCollider != null)
    {
        grapplePoints.Remove(grapplePointObjectCollider.gameObject);
        grapplePointObjectCollider.gameObject.SetActive(false);
        }
        pm.freeze = false;

        grappling = false;

        grapplingCdTimer = grapplingCd;

        lr.enabled = false;
    }
 
    public bool IsGrappling()
    {
        return grappling;
    }

    public Vector3 GetGrapplePoint()
    {
        return grapplePoint;
    }
    
    public GameObject target;

    private bool IsVisible(Camera c, GameObject target)
    {
        var planes = GeometryUtility.CalculateFrustumPlanes(c);
        var point = target.transform.position;

        foreach (var plane in planes)
        {
            if (plane.GetDistanceToPoint(point)< 0)
            {
                return false;
            }
        }
        return true;
    }
    
    GameObject FindClosestGrapplePoint()
    {
        GameObject closestObject = null;
        float closestDistance = Mathf.Infinity;

        // Iterate through all objects
        foreach (GameObject obj in grapplePoints)
        {
            // Calculate the distance between the player and the object
            float distance = Vector3.Distance(transform.position, obj.transform.position);

            // Check if this object is closer than the current closest object
            if (distance < closestDistance)
            {
                closestObject = obj;
                closestDistance = distance;
            }
        }

        return closestObject;
    }

}
