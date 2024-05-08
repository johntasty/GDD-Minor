using UnityEngine;

public class DamageGunManager : MonoBehaviour
{
    public float damage;
    public float BulletRange, BulletForce, BulletSpread;
    private Transform PlayerCamera;
    [SerializeField]
    private bool IsHitscan;

    public GameObject bulletPrefab;

    public Vector3 targetPoint; 
    public Transform attackPoint;

    // Start is called before the first frame update
    void Start()
    {
        PlayerCamera = Camera.main.transform;
    }

    // Update is called once per frame
    public void Shoot()
    {
        if (!IsHitscan) {   // Projectile fire
            DoProjectileShot();
        }
        else {              // Hitscan fire
            DoHitscanShot();
		}
    }

	private void DoProjectileShot() {
        //Find target point in the middle of the screen
        Ray ray = PlayerCamera.GetComponent<Camera>().ViewportPointToRay(new Vector3(0.5f, 0.5f, 0f));
        RaycastHit hit;

        //Check if you hit something, and set target point to it
        if(Physics.Raycast(ray, out hit) ) {
            targetPoint = hit.point;
        }
        else {
            targetPoint = ray.GetPoint(40);
        }
        
        //Calculate direction from gun to target point
        Vector3 projectileDirection = targetPoint - attackPoint.position;

        //Optional bullet spread

        //float x = Random.Range(-BulletSpread, BulletSpread);
        //float y = Random.Range(-BulletSpread, BulletSpread);
        //Vector3 dirWithSpread = projectileDirection + new Vector3(x, y, 0);

        //Instantiate the projectile
        GameObject currentProj = Instantiate(bulletPrefab, attackPoint.position, Quaternion.identity);
        currentProj.transform.forward = projectileDirection.normalized;

        //Send bullet forward
        currentProj.GetComponent<Rigidbody>().AddForce(projectileDirection.normalized * BulletForce, ForceMode.Impulse);

        //Delay the gravity enabling
        currentProj.GetComponent<Bullet>().StartCoroutine("DelayGravity", 0.5f);
	}

	private void DoHitscanShot() {
		Ray gunRay = new Ray(PlayerCamera.position, PlayerCamera.forward);

		if (Physics.Raycast(gunRay, out RaycastHit hitInfo, BulletRange)) {
            HandleBulletImpact(hitInfo.collider);
		}
	}

    private void HandleBulletCollision (Bullet bullet, Collision collision) {
        if (collision != null) {
            ContactPoint cp = collision.GetContact(0);

            HandleBulletImpact(cp.otherCollider);
        }
    }

	private void HandleBulletImpact(Collider hitCollider) {
		if(hitCollider.TryGetComponent(out Entity enemy)) {
            enemy.Health -= damage;
        }
	}
}
