using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class RopeCompoment : MonoBehaviour
{
    [SerializeField] Mesh mesh;
    [SerializeField] Material material;

    [SerializeField] Transform starPoint;
    [SerializeField] Transform endPoint;

    [SerializeField] float ropeLength = 0.5f;
    [SerializeField] float ropeWidth = 4;
    [SerializeField] int numPoints = 25;


    [SerializeField] int iterations = 2;

    [SerializeField, Range(0, 1)] float stiffness;
    [SerializeField, Range(0, 1)] float dampen;
    [SerializeField] float gravity;

    private int segments = 0;
    private float segmentLength;
    private LineRenderer line;
    public RopeNode[] nodes;
    Vector3 gravityDisplacement;
    private void Start()
    {
        initPoints();
        InitLineRenderer();
    }
    private void Update()
    {
        RenderRope();
    }
   
    private void FixedUpdate()
    {
        UpdateGravity();
        for (int i = 0; i < iterations; i++)
        {
            
            UpdateConstrains();
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
        gravityDisplacement = Time.fixedDeltaTime * (Vector3.up * (-2f * gravity));
        foreach (RopeNode node in nodes)
        {
            node.UpdateNode(gravityDisplacement);
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
     

    private void DistanceConstrain(RopeNode nodeA, RopeNode nodeB)
    {
        float delta = (nodeA.Position - nodeB.Position).magnitude;
        float dx = Mathf.Abs(delta - ropeLength);
        Vector3 direction = Vector3.zero;

        if(delta > ropeLength) 
        {
            direction = (nodeA.Position - nodeB.Position).normalized;
        }
        else if(delta < ropeLength)
        {
            direction = (nodeB.Position - nodeA.Position).normalized;
        }

        Vector3 movementVector = direction * dx;

        nodeA.Position -= (movementVector * .5f);
        nodeB.Position += (movementVector * .5f);
    }

    void initPoints()
    {
        segments = numPoints;

        Vector3 direction = (endPoint.position - starPoint.position).normalized;
        segmentLength = ropeLength / segments;
        
        nodes = new RopeNode[segments + 1];

        for (int i = 0; i <= segments; i++) 
        {
            Vector3 startPosition = starPoint.position + (direction * (segmentLength * i));
            nodes[i] = new RopeNode(startPosition);
        }

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
