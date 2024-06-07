using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class OnParticleCollisionEv : MonoBehaviour
{
    [SerializeField] UnityEvent onHit;

    void OnParticleCollision(GameObject other)
    {
        onHit.Invoke();
    }
       
}
