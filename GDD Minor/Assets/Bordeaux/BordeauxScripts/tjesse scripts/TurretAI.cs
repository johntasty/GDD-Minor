using UnityEngine;
using UnityEngine.Events;

public class TurretAI : MonoBehaviour
{
    public Transform player;
    public GameObject Projectile;
    public Transform shootingPoint;
    public float shootingInterval = 2f; // shooting interval
    public float shootingRange = 10f; // shooting range
    public float aimingRange = 20f; // aiming range
    private float shootCooldown;
    [SerializeField] UnityEvent shootEvent;

    private void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player").transform;
    }
    void Update()
    {
        shootCooldown -= Time.deltaTime;

        // Calculate distance to player
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        // Check if player is within aiming range
        if (distanceToPlayer <= aimingRange)
        {
            AimAtPlayer();

            // Check if the player is within shooting range and cooldown is finished
            if (distanceToPlayer <= shootingRange && shootCooldown <= 0f)
            {
                Shoot();
                shootCooldown = shootingInterval;
            }
        }
    }

    void AimAtPlayer()
    {
        // Rotate turret to the player smoothly
        Vector3 direction = player.position - transform.position;
        Quaternion rotation = Quaternion.LookRotation(direction);
        transform.rotation = Quaternion.Lerp(transform.rotation, rotation, Time.deltaTime * 5f);
    }

    void Shoot()
    {
        if (Projectile && shootingPoint)
        {
            shootEvent.Invoke();
            // Instantiate the projectile at the shooting point 
            //Instantiate(Projectile, shootingPoint.position, transform.rotation); // Use turret's current rotation
        }
    }
}
