using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class TriggerObject : MonoBehaviour
{
    [SerializeField]
    private UnityEvent<Collider> OnEnterTrigger;
    [SerializeField]
    private UnityEvent<Collider> WhileInsideTrigger;
    [SerializeField]
    private UnityEvent<Collider> OnExitTrigger;

    private void Start()
    {
        Collider collider = gameObject.GetComponent<Collider>();
        collider.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        OnEnterTrigger.Invoke(other);
    }

    private void OnTriggerStay(Collider other)
    {
        WhileInsideTrigger.Invoke(other);
    }

    private void OnTriggerExit(Collider other)
    {
        OnExitTrigger.Invoke(other);
    }
}
