using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;

public class Health : MonoBehaviour
{
    [SerializeField] private float maxHealth = 100f;
    [SerializeField] private float invincibilityTime = 0.1f;
    private float currentHealth;
    private bool isInvincible = false;


    [SerializeField] UnityEvent onDamage;
    [SerializeField] UnityEvent onDeath;
    
    // Start is called before the first frame update
    void Start()
    {
        currentHealth = maxHealth;
    }

    public void DecreaseHealth(float amount)
    {
        
        if (isInvincible) return;
        isInvincible = true;
        currentHealth -= amount;
        if (currentHealth <= 0)
        {
            Die();
        }
        else
        {
            onDamage.Invoke();
            StartCoroutine(EndInvincibility());
        }
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);
    }

    public void IncreaseHealth(float amount)
    {
        currentHealth += amount;
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);
    }

    private void Die()
    {
        onDeath.Invoke();
    }
    
    private IEnumerator EndInvincibility()
    {
        yield return new WaitForSeconds(invincibilityTime);
        isInvincible = false;
    }
}