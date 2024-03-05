using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class TriggerObject : MonoBehaviour
{
    public UnityEvent<Collider> OnEnterTrigger;
    public UnityEvent<Collider> WhileInsideTrigger;
    public UnityEvent<Collider> OnExitTrigger;

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
