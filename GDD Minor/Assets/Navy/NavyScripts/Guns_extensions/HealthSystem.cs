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
    float currentHealth;
    private void OnEnable()
    {
        if (!StartHealth.UseConstant) return;
        currentHealth = StartHealth.Value;
    }
    public void Onhit()
    {
        EventObject.Invoke();
    }
    public void TakeDamage()
    {        
        if (StartHealth.UseConstant) {MinionHit(); } else { PlayerHit(); }

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
