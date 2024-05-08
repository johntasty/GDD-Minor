using UnityEngine;

public struct RopeNodes
{
    Vector3[] positions;
    Vector3[] oldPositions;
    Matrix4x4[] matrices;

    Transform startPoint;
    Transform endPoint;

    bool collide;
    bool startLocked;
    bool endLocked;
    bool collidingStep;

    LayerMask layerMask;

    Collider[] colliders;
    Collider[] collisionCollider;

    #region Accessors
    public Vector3[] Positions { get => positions; set => positions = value; }
    public Vector3[] OldPositions { get => oldPositions; set => oldPositions = value; }
    public bool Collide { get => collide; set => collide = value; }
    public LayerMask LayerMask { get => layerMask; set => layerMask = value; }
    public Collider[] Colliders { get => colliders; set => colliders = value; }
    public Transform StartPoint { get => startPoint; set => startPoint = value; }
    public Transform EndPoint { get => endPoint; set => endPoint = value; }
    public bool StartLocked { get => startLocked; set => startLocked = value; }
    public bool EndLocked { get => endLocked; set => endLocked = value; }
    public Matrix4x4[] Matrices { get => matrices; set => matrices = value; }
    
    public bool CollidingStep { get => collidingStep; set => collidingStep = value; }

    public Vector3 Velocity(int index) { return (Positions[index] - OldPositions[index]); }

    #endregion
    public RopeNodes(int size, bool colliding, bool lockedStart, bool lockedEnd, Transform start, Transform end, LayerMask collisionsLayer)
    {
        this.positions = new Vector3[size];
        this.oldPositions = new Vector3[size];
        this.matrices = new Matrix4x4[size];
       
        this.startPoint = start;
        this.endPoint = end;

        this.collide = colliding;
        this.startLocked = lockedStart;
        this.endLocked = lockedEnd;
        this.collidingStep = false;
       
        this.layerMask = collisionsLayer;
        this.colliders = new Collider[1];
        this.collisionCollider = new Collider[1];

    }
    public void InitPositions(int index, Vector3 position)
    {
        OldPositions[index] = Positions[index] = position;
    }
    public void RopeUpdate(Vector3 gravity, float damp)
    {
        Vector3 newPos = Vector3.zero;
        Vector3 curVelocity = Vector3.zero;
        for (int i = 0; i < Positions.Length; i++)
        {
            newPos = Positions[i];
            if (Collide)
            {
                int result = Physics.OverlapBoxNonAlloc(Positions[i], Vector3.one * .25f, Colliders, Quaternion.identity, LayerMask);
                if (result > 0)
                {
                    Collider temp = Colliders[0];
                    newPos = temp.ClosestPoint(Positions[i]);
                    UpdatePosition(newPos, i);
                    continue;
                }
            }
            curVelocity = Velocity(i);
            newPos = Positions[i];
            newPos += curVelocity * damp + Time.fixedDeltaTime * gravity;
            UpdatePosition(newPos, i);
        }
    }
    public void Constrains(float chainLinkSize, float maxStretch)
    {
        Positions[0] = StartLocked ? StartPoint.position : StartPoint.position = Positions[0];
        Positions[Positions.Length - 1] = EndLocked ? EndPoint.position : EndPoint.position = Positions[Positions.Length - 1];

        for (int i = 0; i < Positions.Length - 1; i++)
        {
            Vector3 nodeA = Positions[i];
            Vector3 nodeB = Positions[i + 1];

            float delta = (nodeA - nodeB).magnitude;

            float dx = Mathf.Abs(delta - chainLinkSize);
            Vector3 direction = Vector3.zero;
            if (delta > chainLinkSize)
            {
                direction = (nodeA - nodeB).normalized;
            }
            else if (delta < chainLinkSize)
            {
                direction = (nodeB - nodeA).normalized;
            }
            Vector3 move = direction * (dx * maxStretch);

            Positions[i] -= move;
            Positions[i + 1] += move;
        }
    }    
    public void CollideStep(Collider tempCollider)
    {        
        if(!Collide)return;
       
        for (int i = 0; i < Positions.Length; i++)
        {
            int result = Physics.OverlapBoxNonAlloc(Positions[i], Vector3.one * .5f, collisionCollider, Quaternion.identity, LayerMask);
            Vector3 tempDir = Vector3.zero;
            float tempPen = 0;
            if (result > 0)
            {
                Collider temp = collisionCollider[0];

                Physics.ComputePenetration(tempCollider, Positions[i], Quaternion.identity,
                    temp, temp.transform.position, temp.transform.rotation,
                    out tempDir, out tempPen);

                Positions[i] += tempDir * tempPen;

            }
        }
    }

    public void MatriceTranslation(float ropeWidth)
    {
        int index = Positions.Length - 2;
        Vector3 direction = Vector3.zero;
        Quaternion desiredRotation = Quaternion.identity;

        direction = Positions[0] - Positions[1];
        desiredRotation = Quaternion.LookRotation(direction.normalized, Vector3.right);
        desiredRotation *= Quaternion.Euler(0, 0, 90);

        Matrices[0].SetTRS(Positions[0], desiredRotation, Vector3.one * ropeWidth);
       
        for (int i = index; i > 0; i--)
        {
            direction = Positions[i - 1] - Positions[i + 1];
            desiredRotation = Quaternion.LookRotation(direction.normalized, Vector3.right);
            if (i % 2 == 0)
            {
                desiredRotation *= Quaternion.Euler(0, 0, 90);
            }
            Matrices[i].SetTRS(Positions[i], desiredRotation, Vector3.one * ropeWidth);
        }

        direction = Positions[Positions.Length - 1] - Positions[Positions.Length - 2];
        desiredRotation = Quaternion.LookRotation(direction.normalized, Vector3.right);
        desiredRotation *= Quaternion.Euler(0, 0, 90);

        Matrices[Positions.Length - 1].SetTRS(Positions[Positions.Length - 1], desiredRotation, Vector3.one * ropeWidth);
    }
    public void UpdatePosition(Vector3 newPosition, int index)
    {
        OldPositions[index] = Positions[index];
        Positions[index] = newPosition;
    }

}
