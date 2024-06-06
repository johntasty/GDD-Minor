using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    public float speed = 20f;
    private float lifeDuration = 5f;
    public float damageAmount = 10f; // Amount of damage of the projectile
    public float knockbackForce = 5f; // Knockback force applied to the enemy

    private float damage;

    void Start()
    {
        Destroy(this.gameObject, lifeDuration);
        damage = damageAmount * DifficultyManager.Instance.damageMultiplier;
    }

    void Update()
    {
        transform.Translate(Vector3.forward * speed * Time.deltaTime);
    }

    private void OnTriggerEnter(Collider other)
    {
        Health health = other.gameObject.GetComponent<Health>();

        if (health != null)
        {
            // Decrease the health of the player or enemy
            health.DecreaseHealth(damage);
            Debug.Log("Damage has been done: " + damage);

            // Check if the collided object has the Enemy_follow script
            Enemy_follow enemy = other.gameObject.GetComponent<Enemy_follow>();
            if (enemy != null)
            {
                // Apply knockback
                Vector3 knockbackDirection = (other.transform.position - transform.position).normalized;
                enemy.ApplyKnockback(knockbackDirection, knockbackForce);
            }

            // Destroy the projectile on collision
            Destroy(this.gameObject);
        }
    }
}
