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

    int collisions;
    PhysicMaterial physicMaterial;

	private void Start() {
        Setup();
	}

	private void Update() {
        //Choose when to explode/disable bullet

        if (collisions > maxCollisions) Damage();

        maxLifetime -= Time.deltaTime;
        if (maxLifetime <= 0f) Damage();
	}

	public void Damage() {

    }

	private void OnCollisionEnter(Collision collision) {
        collisions++;

        if (collision.collider.CompareTag("Enemy") && damageOnTouch) Damage();
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
}
