using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;

[RequireComponent(typeof(Rigidbody))]
public class Bullet : MonoBehaviour
{
    //Assigned things
    public Rigidbody rb;
    public GameObject explosion;
    public LayerMask enemyMask;

    //Bullet stats
    [Range(0f, 1f)]
    public float bounciness;
    public bool useGravity;

    //Damage
    public int explosionDamage;
    public float explosionRange;
    public bool IsExplosive;

    //Lifetime
    public int maxCollisions;
    public float maxLifetime;
    public bool damageOnTouch = true;
    public bool damageOnce = true;

    int collisions = 0;
    PhysicMaterial physicMaterial;

	private void Start() {
        Setup();
	}

	private void Update() {
        //Choose when to explode/disable bullet

        if (collisions > maxCollisions && damageOnce) {
            damageOnce = false;
            Damage(null);
        }

        maxLifetime -= Time.deltaTime;
        if (maxLifetime <= 0f && damageOnce) {
            damageOnce = false;
            Damage(null);
        }
	}

	public void Damage(Collider collider) {
        if (explosion != null) {
            Instantiate(explosion, transform.position, Quaternion.identity);
        }
        //else {
        //    Debug.LogWarning("No explosion effect.");
        //}

		if (IsExplosive) {
			explosionRange = 50f;
            Explode();
		}
		else {
            if (collider != null) {
                collider.GetComponent<Entity>().TakeDamage(explosionDamage);
            }
            else {
			    explosionRange = 0.1f;
                Explode();
            }
		}

		

		Invoke("Delay", 0.05f);
    }

    public void Explode() {
		Collider[] enemies = Physics.OverlapSphere(transform.position, explosionRange, enemyMask);
        if (enemies.Length > 0) {
		    for (int i = 0; i < enemies.Length; i++) {
			    Debug.Log(enemies[i]);
			    if (i == 0 || enemies[i] != enemies[i - 1]) {
				    enemies[i].GetComponent<Entity>().TakeDamage(explosionDamage);
			    }
		    }
        }
	}

    public void Delay() {
        StopAllCoroutines();
        Destroy(gameObject);
    }

	private void OnCollisionEnter(Collision collision) {
        collisions++;

        if (collision.collider.CompareTag("Enemy") && damageOnTouch && damageOnce) {
            damageOnce = false;
            Debug.Log("HIT!");
            Damage(collision.collider);
        }
	}

	public void Setup() {
        //Make PhysicMaterial
        physicMaterial = new PhysicMaterial();
        physicMaterial.bounciness = bounciness;
        physicMaterial.frictionCombine = PhysicMaterialCombine.Minimum;
        physicMaterial.bounceCombine = PhysicMaterialCombine.Maximum;

        //Assign PhysicMaterial
        GetComponent<SphereCollider>().material = physicMaterial;

        //Set Gravity
        rb.useGravity = useGravity;
    }

    public IEnumerator DelayGravity(float delay) {
        rb.useGravity = false;
        yield return new WaitForSeconds(delay);
        rb.useGravity = true;
    }
}
