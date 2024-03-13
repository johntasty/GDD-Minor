using UnityEngine.Events;
using UnityEngine;

public class Gun : MonoBehaviour
{
    public UnityEvent OnGunShoot;
    public float cooldownFire;

    //semi-auto if false, auto if true
    public bool Automatic;

    private float currentCooldown;
    
    // Start is called before the first frame update
    void Start()
    {
        currentCooldown = cooldownFire;
    }

    // Update is called once per frame
    void Update()
    {
        if (Automatic) {
            if (Input.GetMouseButton(0)) {
                if (currentCooldown <= 0f) {
                    OnGunShoot?.Invoke();
                    currentCooldown = cooldownFire;
                }
            }
        }
        else {
            if (Input.GetMouseButtonDown(0)) {
                if (currentCooldown <= 0f) {
                    OnGunShoot?.Invoke();
                    currentCooldown = cooldownFire;
                }
            }
        }

        currentCooldown -= Time.deltaTime;
    }
}
