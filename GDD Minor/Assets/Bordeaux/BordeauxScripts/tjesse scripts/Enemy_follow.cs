using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI; // Required for the NavMeshAgent
// GameObject.FindWithTag("EnemyManager").GetComponent<EnemyManager>();

public class Enemy_follow : MonoBehaviour
{
    public Transform player;
    public NavMeshAgent agent;
    public float detectionRange = 15f;
    public float stoppingDistance = 3f;
    public float shootingRange = 10f;
    public GameObject Projectile;
    public Transform firePoint;
    public float shootCooldown = 1f;

    private float lastShootTime = -Mathf.Infinity;

    private void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        agent.stoppingDistance = stoppingDistance;
    }

    private void Update()
    {
        FollowPlayer();
        AimTowardsPlayer();
        TryShootAtPlayer();
    }

    void FollowPlayer()
    {
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (distanceToPlayer <= detectionRange)
        {
            agent.SetDestination(player.position);
        }
        else
        {
            agent.ResetPath(); // This stops the agent from moving
        }
    }

    void AimTowardsPlayer()
    {
        // calculate the turning direction to the player
        Vector3 direction = player.position - transform.position;
        // direction.y = 0; // Keep the enemy level on the ground still gotta do more experimenting with this

        // only rotate towards the player if the enemy is not too close (to prevent from doing weird stuff
        if (direction.magnitude > stoppingDistance)
        {
            Quaternion lookRotation = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f);
        }
    }

    void TryShootAtPlayer()
    {
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (distanceToPlayer <= shootingRange && Time.time - lastShootTime >= shootCooldown)
        {
            Shoot();
            lastShootTime = Time.time;
        }
    }

    void Shoot()
    {
        // Ensure the firePoint and Projectile are assigned can be handy but can be left out if wanted
        // if (firePoint == null || Projectile == null) return;

        // Instantiate the bullet
        Instantiate(Projectile, firePoint.position, Quaternion.LookRotation(player.position - firePoint.position));
        //sound effects or other stuff can be added here
    }
}