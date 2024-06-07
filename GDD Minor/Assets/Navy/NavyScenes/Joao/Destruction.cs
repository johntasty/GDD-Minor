using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Destruction : MonoBehaviour
{

    [SerializeField] private Transform destroyedObject;

    private Vector3 LastBulletForward;

    public void DestroyObject() {
        GameObject destroyedObjectInstance = Instantiate(destroyedObject, transform.position, transform.rotation).GameObject();

        Trajectory trajectoryScript = destroyedObjectInstance.GetComponent<Trajectory>();
        if(trajectoryScript!=null) {
            trajectoryScript.SetLastBulletHit(LastBulletForward);
        }


        Renderer renderer = gameObject.GetComponent<Renderer>();
        if(renderer!=null) {
            renderer.enabled=false;
        }

        Collider collider = gameObject.GetComponent<Collider>();
        if(collider!=null) {
            collider.enabled=false;
        }


    }

    private void OnCollisionEnter(Collision collision) {
        if(collision.gameObject.CompareTag("Bullet")) {
            LastBulletForward=collision.transform.forward;
        }
    }
}
