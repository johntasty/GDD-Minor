using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EnemyHealth : MonoBehaviour
{
    [Header("Select which Tags to interact with.")]
    [TagSelector]
    [SerializeField] string[] TagFilterArray = new string[] { };

    [SerializeField] FloatValue Health;
    [SerializeField] bool Reset;
    [SerializeField] ReferenceFloat StartHP;
    [SerializeField] UnityEvent Event;
        

    private void Start()
    {
        if(Reset)
        {
            Health.Set(StartHP);
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (!TagCheck(other.gameObject.tag)) return;
        Dmg damage = other.gameObject.GetComponent<Dmg>();
        if(damage != null)
        {
            Health.Change(-damage.Damage);
            Event.Invoke();
        }
       
    }
    bool TagCheck(string colliderTag)
    {
        foreach (string tag in TagFilterArray)
        {
            if (tag == colliderTag) return true;
        }
        return false;
    }
}
