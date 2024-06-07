using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trajectory : MonoBehaviour {
    public float frictionMultiplier = 0.95f;
    public Vector3 velocity = Vector3.zero;
    private Vector3 GRAVITY = new Vector3(0, -9.81f, 0);
    private float radius = 1f;
    private Vector3 bulletForward;
    private float noise = 0.5f;
    private float force = 25f;
    public float destructionDelay = 1f;

    public void SetLastBulletHit(Vector3 lastBulletHitForward) {
        bulletForward = lastBulletHitForward;
        bulletForward.Normalize();
        Debug.Log("SetLastBulletHit: "+bulletForward);

    }


    private List<Vector3> velocities = new List<Vector3>();

    void Start() {
        // Collider collider = GetComponent<Collider>();
        // radius=collider.bounds.extents.magnitude;

        int childCount = transform.childCount;
        for(int i = 0; i<childCount; i++) {
            Transform child = transform.GetChild(i);

            Vector3 spreadAngle = AddNoise(bulletForward, noise);

            ApplyImpulse(child, spreadAngle, force);
        }

        StartCoroutine(DestroyChildrenAfterDelay(destructionDelay));
    }

    private Vector3 AddNoise(Vector3 direction, float noise) {        
        float noiseX = Random.Range(-noise, noise);
        float noiseY = Random.Range(-noise, noise);
        float noiseZ = Random.Range(-noise, noise);

        Vector3 noiseVector = new Vector3(noiseX, noiseY, noiseZ);

        Vector3 noisyDirection = direction + noiseVector;

        noisyDirection.Normalize();

        return noisyDirection;
    }

    void FixedUpdate() {
        UpdatePositions();
    }

    void UpdatePositions() {
        for(int i = 0; i<transform.childCount; i++) {
            Transform child = transform.GetChild(i);
            Vector3 velocity = velocities[i];
            Vector3 newPosition = child.position+velocity*Time.fixedDeltaTime+GRAVITY*Time.fixedDeltaTime;

            //// Trying some collision
            //RaycastHit hit;
            //if(Physics.SphereCast(child.position, radius, newPosition-child.position, out hit, (newPosition-child.position).magnitude)) {
            //    newPosition=hit.point-(newPosition-child.position).normalized*radius;
            //}

            child.position=newPosition;

            velocities[i]*=frictionMultiplier;
        }
    }

    public void ApplyImpulse(Transform child, Vector3 direction, float force) {
        Vector3 initialVelocity = direction.normalized*force;
        velocities.Add(initialVelocity);
    }

    private IEnumerator DestroyChildrenAfterDelay(float delay) {
        yield return new WaitForSeconds(delay);

        for(int i = 0; i<transform.childCount; i++) {
            Destroy(transform.GetChild(i).gameObject);
        }
        Destroy(gameObject);
    }
}
