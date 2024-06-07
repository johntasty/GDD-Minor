using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class HealthSystem : MonoBehaviour
{
    [SerializeField] UnityEvent EventObject;
    [SerializeField] UnityEvent DeathEvent;
    [SerializeField] ReferenceFloat StartHealth;
    [SerializeField] FloatValue Health;
    [SerializeField] int dmgTotake;
    [SerializeField] bool player = false;
    float currentHealth;
    private void OnEnable()
    {
        if (player) { Health.Set(StartHealth); return; }
        currentHealth = StartHealth;
    }
    public void Onhit()
    {
        EventObject.Invoke();
    }
    public void TakeDamage()
    {        
        if (player) { PlayerHit(); } else { MinionHit(); }

    }
    void MinionHit()
    {        
        currentHealth -= dmgTotake;
        if (currentHealth <= 0)
        {
            DeathEvent.Invoke();
        }
    }
    void PlayerHit()
    {
        Health.Change(-dmgTotake);
        if (Health.FloatVariable <= 0)
        {
            DeathEvent.Invoke();
        }
        
    }
}
