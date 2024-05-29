using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trajectory : MonoBehaviour {
    public float frictionMultiplier = 0.95f;
    public Vector3 velocity = Vector3.zero;
    private Vector3 GRAVITY = new Vector3(0, -9.81f, 0);
    private float radius;

    private List<Vector3> velocities = new List<Vector3>();

    void Start() {
        // Collider collider = GetComponent<Collider>();
        // radius=collider.bounds.extents.magnitude;

        int childCount = transform.childCount;
        for(int i = 0; i<childCount; i++) {
            Transform child = transform.GetChild(i);
            Vector3 randomAngle = new Vector3(Random.Range(-0.1f, 0.1f), Random.Range(-0.5f, 1f), 1);
            randomAngle.Normalize();

            ApplyImpulse(child, randomAngle, 15f);
        }
    }

    void FixedUpdate() {
        UpdatePositions();
    }

    void UpdatePositions() {
        for(int i = 0; i<transform.childCount; i++) {
            Debug.Log("Updating position");
            Transform child = transform.GetChild(i);
            Vector3 velocity = velocities[i];
            Vector3 newPosition = child.position+velocity*Time.fixedDeltaTime+GRAVITY*Time.fixedDeltaTime;

            // Uncomment and adjust if you need collision detection
            // RaycastHit hit;
            // if(Physics.SphereCast(child.position, radius, newPosition - child.position, out hit, (newPosition - child.position).magnitude)) {
            //     newPosition = hit.point - (newPosition - child.position).normalized * radius;
            // }

            child.position=newPosition;

            // Apply friction to the velocity
            velocities[i]*=frictionMultiplier;
        }
    }

    public void ApplyImpulse(Transform child, Vector3 direction, float force) {
        Vector3 initialVelocity = direction.normalized*force;
        velocities.Add(initialVelocity);
    }
}
