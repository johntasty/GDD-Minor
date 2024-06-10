using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Knockback : MonoBehaviour
{
    private Vector3 knockbackDirection;
    public float knockbackDistance = 1.0f;

    public void ApplyKnockback(Vector3 direction)
    {
        knockbackDirection = direction.normalized;
        transform.Translate(knockbackDirection * knockbackDistance, Space.World);
    }
}

// on bullet 
// Knockback enemyKnockback = other.GetComponent<Knockback>();
// Vector3 knockbackDirection = other.transform.position - transform.position;
// enemyKnockback.ApplyKnockback(knockbackDirection);