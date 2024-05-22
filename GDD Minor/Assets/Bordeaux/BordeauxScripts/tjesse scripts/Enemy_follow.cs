using System.Collections;
using UnityEngine;
using UnityEngine.AI; // Required for the NavMeshAgent
// GameObject.FindWithTag("EnemyManager").GetComponent<EnemyManager>();

public class Enemy_follow : MonoBehaviour
{
    public Transform player;
    public NavMeshAgent agent;
    public float detectionRange = 15f;
    public float tooCloseRange = 2f;
    public float stoppingDistance = 3f;
    public float shootingRange = 10f;
    public GameObject Projectile;
    public Transform firePoint;
    public float shootCooldown = 1f;
    public float patrolRadius = 10f;
    public float patrolDuration = 5f;
    public float searchDuration = 10f;

    private float lastShootTime = -Mathf.Infinity;
    private Vector3 startPosition;
    private float patrolTimer;
    private Vector3 lastKnownPlayerPosition;
    private float searchTimer = 0;

    [SerializeField] Animator animator;
    
    private void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player").transform;
        agent = GetComponent<NavMeshAgent>();
        agent.stoppingDistance = stoppingDistance;
        startPosition = transform.position;
    }

    private void Update()
    {
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (agent.velocity.sqrMagnitude > 0.1f)
        {
            animator.SetBool("walk", true);
        }
        else
        {
            animator.SetBool("walk", false);
        }
        if (distanceToPlayer <= detectionRange)
        {
            lastKnownPlayerPosition = player.position;
            if (distanceToPlayer < tooCloseRange)
            {
                RetreatFromPlayer();
            }
            else
            {
                FollowPlayer();
            }
            AimTowardsPlayer();
            TryShootAtPlayer();
            searchTimer = searchDuration; // Reset search timer every time the player is seen
        }
        else if (searchTimer > 0)
        {
            SearchLastKnownPosition();
        }
        else
        {
            PatrolAndLookAround();
        }
    }

    void FollowPlayer()
    {
        agent.SetDestination(player.position);
    }

    void RetreatFromPlayer()
    {
        Vector3 directionAwayFromPlayer = transform.position - player.position;
    // Increase the multiplier to ensure a more significant distance
    Vector3 retreatPosition = transform.position + directionAwayFromPlayer.normalized * (tooCloseRange + 1f); // Add extra distance
    if (NavMesh.SamplePosition(retreatPosition, out NavMeshHit hit, 5f, NavMesh.AllAreas))
    {
        agent.SetDestination(hit.position);
    }
    else
    {
        Debug.Log("No valid retreat found");
    }
    }

    void AimTowardsPlayer()
    {
        Vector3 direction = player.position - transform.position;
        if (direction.magnitude > stoppingDistance)
        {
            Quaternion lookRotation = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f);
        }
    }

    void TryShootAtPlayer()
    {
        if (Vector3.Distance(transform.position, player.position) <= shootingRange && Time.time - lastShootTime >= shootCooldown)
        {
            animator.SetTrigger("attack");
            StartCoroutine(Shoot());
            lastShootTime = Time.time;
        }
    }

    private IEnumerator Shoot()
    {
        yield return new WaitForSeconds(0.3f);
        Instantiate(Projectile, firePoint.position, Quaternion.LookRotation(player.position - firePoint.position));
    }

    void SearchLastKnownPosition()
    {
        searchTimer -= Time.deltaTime;
        if (agent.destination != lastKnownPlayerPosition)
        {
            agent.SetDestination(lastKnownPlayerPosition);
        }
        if (agent.remainingDistance < 1.0f)
        {
            // Rotate the enemy to look around when it reaches the last known position can be removed if its too goofy
            transform.Rotate(0, 360 * Time.deltaTime / searchDuration, 0);
        }
    }

    void PatrolAndLookAround()
    {
        if (patrolTimer <= 0f)
        {
            Vector3 newPatrolPoint = RandomNavmeshLocation(patrolRadius);
            agent.SetDestination(newPatrolPoint);
            patrolTimer = patrolDuration;
        }
        else
        {
            patrolTimer -= Time.deltaTime;
            if (agent.remainingDistance < 0.1f)
            {
                // Rotate the enemy to look around when it reaches the patrol point
                transform.Rotate(0, 360 * Time.deltaTime / patrolDuration, 0);
            }
        }
    }

    Vector3 RandomNavmeshLocation(float radius)
    {
        Vector3 randomDirection = Random.insideUnitSphere * radius;
        randomDirection += startPosition;
        NavMeshHit hit;
        Vector3 finalPosition = Vector3.zero;
        if (NavMesh.SamplePosition(randomDirection, out hit, radius, 1))
        {
            finalPosition = hit.position;
        }
        return finalPosition;
    }
}
