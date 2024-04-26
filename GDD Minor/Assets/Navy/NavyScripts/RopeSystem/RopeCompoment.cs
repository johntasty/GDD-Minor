using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;
using static TriggerObject;


public class RopeCompoment : MonoBehaviour
{
    [SerializeField] Mesh mesh;
    [SerializeField] Material material;

    [SerializeField] Transform starPoint;
    [SerializeField] Transform endPoint;
    [SerializeField] LayerMask m_LayerMask;
    [SerializeField] ReferenceFloat ropeLength;
    [SerializeField] ReferenceFloat ropeWidth;
    [SerializeField] ReferenceInt RopePoints;


    [SerializeField] ReferenceInt iterations;

    [SerializeField, Range(0, 1)] float stiffness;
    [SerializeField, Range(0, 1)] float dampen;
    [SerializeField] float gravity;

    private int segments = 0;
    private float segmentLength;
    private LineRenderer line;
    private RopeNode[] nodes;
    Matrix4x4[] matrices;
    Vector3 gravityDisplacement;
    
    Collider[] hitColliders = new Collider[2];
    Collider endPointCollider;

    Vector3 collisionDirection;
    Vector3 CrossDir;
    Vector3 otherCollider;
    Quaternion otherColliderRot;
    float collisionDistance;

    private float RopeLength { get { return (ropeLength / 10f);}}

    private void Start()
    {
        initPoints();
        //InitLineRenderer();
    }
    private void Update()
    {
        //RenderRope();
        Graphics.DrawMeshInstanced(mesh, 0, material, matrices, segments);
    }
   
    private void FixedUpdate()
    {
        UpdateGravity();
        for (int i = 0; i < iterations; i++)
        {
            
            UpdateConstrains();
            if(i % 2 == 0)
            {
                Collide();
            }
        }
        TranslateMatrices();
    }

    void TranslateMatrices()
    {
        for (int i = 0; i < segments; i++)
        {
            Vector3 dir = (nodes[i + 1].Position - nodes[i].Position).normalized;
            Quaternion desiredRotation = Quaternion.LookRotation(dir, Vector3.right);

            matrices[i].SetTRS(nodes[i].Position, desiredRotation, Vector3.one * ropeWidth);
        }
    }
    private void RenderRope()
    {
        for (int i = 0; i < segments + 1; i++)
        {
            line.SetPosition(i, nodes[i].Position);
        }
    }
    void UpdateGravity()
    {
        //gravityDisplacement = (Vector3.up * (-2f * gravity));
        foreach (RopeNode node in nodes)
        {
            node.UpdateNode(gravityDisplacement, dampen);
        }
    }
    private void UpdateConstrains()
    {
        nodes[0].Position = starPoint.position;
        
        
        for (int i = 0; i < segments; i++)
        {
            RopeNode nodeA = nodes[i];
            RopeNode nodeB = nodes[i + 1];

            DistanceConstrain(nodeA, nodeB);
        }
        endPoint.position = nodes[segments].Position;
    }
    private void Collide()
    {

        int result = Physics.OverlapBoxNonAlloc(endPoint.position, endPoint.localScale / 2, hitColliders, Quaternion.identity, m_LayerMask);
        for (int i = 0; i < result; i++)
        {

            var collider = hitColliders[i];

            if (collider == endPointCollider) continue;

            otherCollider = hitColliders[i].transform.position;
            otherColliderRot = hitColliders[i].transform.rotation;
            Vector3 dir = (endPoint.position - otherCollider).normalized;
            Vector3 temp = Vector3.Cross(dir, Vector3.down);
            CrossDir = Vector3.Cross(temp, Vector3.up);

            Physics.ComputePenetration(
               endPointCollider, endPoint.position, endPoint.rotation,
               collider, otherCollider, otherColliderRot,
               out collisionDirection, out collisionDistance
            );
            nodes[segments].Position += collisionDirection * collisionDistance;
            nodes[segments].Position += CrossDir * collisionDistance;
        }
    }
    
    private void DistanceConstrain(RopeNode nodeA, RopeNode nodeB)
    {
        float delta = (nodeA.Position - nodeB.Position).magnitude;
        float dx = Mathf.Abs(delta - RopeLength);
        Vector3 direction = Vector3.zero;

        if(delta > RopeLength) 
        {
            direction = (nodeA.Position - nodeB.Position).normalized;
        }
        else if(delta < RopeLength)
        {
            direction = (nodeB.Position - nodeA.Position).normalized;
        }

        Vector3 movementVector = direction * dx;

        nodeA.Position -= (movementVector * stiffness);
        nodeB.Position += (movementVector * stiffness);
    }

    void initPoints()
    {
        segments = RopePoints;
        segmentLength = RopeLength / segments;

        gravityDisplacement = new Vector3(0, -2f * gravity, 0);
        nodes = new RopeNode[segments + 1];
        matrices = new Matrix4x4[segments + 1];

        Vector3 startPosition = Vector3.zero;

        for (int i = 0; i <= segments; i++) 
        {            
            nodes[i] = new RopeNode(startPosition);
            matrices[i] = Matrix4x4.TRS(startPosition, Quaternion.identity, Vector3.one);
            startPosition.y -= segmentLength;
        }
        endPointCollider = endPoint.GetComponent<Collider>();  
    }
    void InitLineRenderer()
    {
        line = this.gameObject.AddComponent<LineRenderer>();
        line.startWidth = ropeWidth;
        line.endWidth = ropeWidth;
        line.positionCount= segments + 1;
        line.material = material;
        line.GetComponent<Renderer>().enabled = true;
    }
}
