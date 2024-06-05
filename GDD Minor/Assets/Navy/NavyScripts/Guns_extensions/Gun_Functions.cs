using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;

public class Gun_Functions : MonoBehaviour
{
    [SerializeField] UnityEvent gunEvents;


    [SerializeField] float fire_cooldown;

    bool onCooldown = false;
    public void FireBullet()
    {
        
        if (onCooldown) return;
        onCooldown = true;       
        gunEvents.Invoke();
        Invoke(nameof(Cooldown), fire_cooldown);
    }
    void Cooldown()
    {
        onCooldown = false;
    }
   
}
