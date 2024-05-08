using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RopeHolder : MonoBehaviour
{
    [SerializeField] Mesh mesh;
    [SerializeField] Material material;

    [SerializeField] Transform starPoint;
    [SerializeField] Transform endPoint;
    [SerializeField] bool startLocked;
    [SerializeField] bool endLocked;
    [SerializeField] bool collideAll;
    [SerializeField] bool collideEndPlatform;

    [SerializeField] LayerMask m_LayerMask;
    [SerializeField] ReferenceFloat chainLinkSize;
    [SerializeField] ReferenceFloat ropeWidth;
    [SerializeField] ReferenceFloat ropeLength;

    [SerializeField, Range(0, 1f)] float maxStretch = .65f;
    [SerializeField, Range(0, 10f)] float maxMove = 4f;
    
    [SerializeField] ReferenceInt iterations;

    [SerializeField, Range(0, 1)] float dampen;
    [SerializeField] float gravity;

    int RopePoints;
    private RopeNodes rope;
    Vector3 gravityDisplacement;
    Collider ropeCollider;
    [SerializeField]Collider endPointCol;

    public Transform StarPoint { get => starPoint; set => starPoint = value; }
    public Transform EndPoint { get => endPoint; set => endPoint = value; }

    private void Start()
    {
        initPoints();
       
        if(endPointCol == null)
        {
            bool checkCollider = endPoint.TryGetComponent<Collider>(out endPointCol);
            if (!checkCollider) { endPointCol = endPoint.gameObject.AddComponent<BoxCollider>(); }
        }
       
    }
    private void Update()
    {
        Graphics.DrawMeshInstanced(mesh, 0, material, rope.Matrices, RopePoints);
       
    }
    private void FixedUpdate()
    {
        rope.EndLocked = endLocked;
        rope.StartLocked = startLocked;
        rope.Collide = collideAll;
        
        rope.RopeUpdate(gravityDisplacement, dampen);
        for (int i = 0; i < iterations; i++)
        {
            rope.Constrains(chainLinkSize, maxStretch);
            if (i % 4 == 0)
            {
                rope.CollideStep(ropeCollider);
                
            }
        }
        rope.MatriceTranslation(ropeWidth);
    }   
    void initPoints()
    {
        ropeCollider = transform.GetComponent<Collider>();
        //Chain Link size is bigger than .5... +2 for the end pieces
        RopePoints = (int)(ropeLength / .6f) + 2;

        gravityDisplacement = new Vector3(0, -1f * gravity, 0);
        rope = new RopeNodes(RopePoints,false,true,true,starPoint,endPoint,m_LayerMask);
       
        Vector3 startPosition = transform.position;

        for (int i = 0; i < RopePoints; i++)
        {
            rope.InitPositions(i,startPosition);
            rope.Matrices[i] = Matrix4x4.TRS(startPosition, Quaternion.identity, Vector3.one);            
            startPosition.y -= chainLinkSize;
        }
       
    }
    public void CollideEndP(object collider)
    {       
        if(!collideEndPlatform) return;
       
        int index = rope.Positions.Length - 1;
        Vector3 tempDir = Vector3.zero;
        float tempPen = 0;

        Collider temp = collider as Collider;

        Physics.ComputePenetration(endPointCol, endPointCol.transform.position, Quaternion.identity,
                    temp, temp.transform.position, temp.transform.rotation,
                    out tempDir, out tempPen);
        Vector3 dir = (endPointCol.transform.position - temp.transform.position).normalized;
       
        Vector3 CrossDir = Vector3.ProjectOnPlane(dir, Vector3.up) * tempPen;
       
        rope.Positions[index] += tempDir * tempPen;
        rope.Positions[index] += CrossDir * (maxMove);
    }
}
