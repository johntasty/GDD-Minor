using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class HealthSystem : MonoBehaviour
{
    [SerializeField] UnityEvent EventObject;
    [SerializeField] ReferenceFloat StartHealth;
    [SerializeField] FloatValue Health;

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
        currentHealth -= 10;
    }
    void PlayerHit()
    {
        Health.Change(-5);
    }
}
