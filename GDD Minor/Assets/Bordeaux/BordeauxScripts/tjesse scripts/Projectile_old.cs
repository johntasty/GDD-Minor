using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile_old : MonoBehaviour
{
    public float speed = 20f;
    public float lifeDuration = 5f;

    void Start()
    {
        Destroy(gameObject, lifeDuration);
    }

    void Update()
    {
        transform.Translate(Vector3.forward * speed * Time.deltaTime);
    }

    private void OnCollisionEnter(Collision collision)
    {
        // Add what happens on collision (e.g., damage player)
        Destroy(gameObject); // Destroy the projectile on collision
    }
}
