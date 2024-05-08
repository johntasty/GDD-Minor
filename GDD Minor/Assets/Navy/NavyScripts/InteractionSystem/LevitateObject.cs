using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevitateObject : MonoBehaviour
{
    [SerializeField] float acceleration , speed;
    public void Levitate(Collider body)
    {        
        bool rbFound = body.gameObject.TryGetComponent<Rigidbody>(out Rigidbody rb);
        if(!rbFound) return;

        Vector3 velocity = rb.velocity;
        if (velocity.y >= speed)
        {
            return;
        }
        if (acceleration > 0f)
        {
            velocity.y = Mathf.MoveTowards(
                velocity.y, speed, acceleration * Time.deltaTime
            );
        }
        else
        {
            velocity.y = speed;
        }
        
        rb.velocity = velocity;
    }
}
