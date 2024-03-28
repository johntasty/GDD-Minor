using UnityEngine;

public class TurretAI : MonoBehaviour
{
    public Transform player;
    public GameObject Projectile;
    public Transform shootingPoint;
    public float shootingInterval = 2f;
    public float range = 10f;
    private float shootCooldown;

    void Update()
    {
        shootCooldown -= Time.deltaTime;

        // To check distance between turret and player if within range
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);
        if(distanceToPlayer <= range)
        {
            // Rotate to the player
            Vector3 direction = player.position - transform.position;
            Quaternion rotation = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Lerp(transform.rotation, rotation, Time.deltaTime * 5f);
			

            // Shoot if cooldown is finished
            if(shootCooldown <= 0f)
            {
                Shoot();
                shootCooldown = shootingInterval;
            }
        }
    }

void Shoot()
{
    if(Projectile && shootingPoint)
    {
        // Calculate the rotation to look at player
        Vector3 direction = (player.position - shootingPoint.position).normalized;
        Quaternion rotation = Quaternion.LookRotation(direction);

        // instantiate or create bullet with turret's rotation
        Instantiate(Projectile, shootingPoint.position, rotation);
    }
}
}
