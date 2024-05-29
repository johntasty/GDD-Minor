using UnityEngine.Events;
using UnityEngine;
using Unity.VisualScripting;

public class Gun : MonoBehaviour
{
    public UnityEvent OnGunShoot;
    public float cooldownFire;

    //semi-auto if false, auto if true
    public bool Automatic;
    public bool shooting;
    private float currentCooldown;

    // Ammo & Reloading
    public bool infiniteAmmo, callReload, reloading;
    public int currentAmmo, magSize, startAmmoCount, totalAmmo;
	public float cooldownReload;
    
    // Start is called before the first frame update
    void Start()
    {
        currentCooldown = cooldownFire;
        startAmmoCount = 120;
        totalAmmo = startAmmoCount;
        magSize = 12;
        currentAmmo = magSize;
    }

    // Update is called once per frame
    void Update()
    {
        if (Automatic) shooting = Input.GetMouseButton(0);
        else shooting = Input.GetMouseButtonDown(0);
        
        callReload = Input.GetKeyDown(KeyCode.R);

        if(shooting && currentCooldown <= 0f && totalAmmo > 0) {
			OnGunShoot?.Invoke();
            currentAmmo--;
			currentCooldown = cooldownFire;
		}

        if(currentCooldown <= 0f) reloading = false;

        // Reload code block
        // Check if gun has zero ammo
        if(currentAmmo <= 0 || (callReload && !reloading)) {
            reloading = true;
			currentCooldown += cooldownReload;
			//Check if you have an infinite ammo pool
			if (!infiniteAmmo) {
                //If not, take a mag's worth from the pool, IF there is that much ammo left.
				if (totalAmmo >= magSize) {
					totalAmmo -= magSize;
					currentAmmo = magSize;
				}
				else {
					currentAmmo = totalAmmo;
					totalAmmo = 0;
				}
			}
			else {
                // If there is an infinite ammo pool, then just grab a mag's worth. No sweat!
				currentAmmo = magSize;
			}
			
        }

        currentCooldown -= Time.deltaTime;
        callReload = false;
		//if (Automatic) {
  //          if (shooting) {
  //              if (currentCooldown <= 0f) {
		//			OnGunShoot?.Invoke();
		//			currentCooldown = cooldownFire;
		//		}
  //          }
  //      }
  //      else {
  //          if (Input.GetMouseButtonDown(0)) {
  //              if (currentCooldown <= 0f) {
  //                  OnGunShoot?.Invoke();
  //                  currentCooldown = cooldownFire;
  //              }
  //          }
  //      }

    }
}
