using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageGunManager : MonoBehaviour
{
    public float Damage;
    public float BulletRange;
    private Transform PlayerCamera;

    // Start is called before the first frame update
    void Start()
    {
        PlayerCamera = Camera.main.transform;
    }

    // Update is called once per frame
    public void Shoot()
    {
        Ray gunRay = new Ray(PlayerCamera.position, PlayerCamera.forward);
        if (Physics.Raycast(gunRay,out RaycastHit hitInfo, BulletRange)) {
            if (hitInfo.collider.gameObject.TryGetComponent(out Entity enemy)) {
                enemy.Health -= Damage;
            }
        }
    }
}
