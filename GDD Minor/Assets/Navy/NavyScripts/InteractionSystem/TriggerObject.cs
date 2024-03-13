using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEditor;

[RequireComponent(typeof(Collider))]
public class TriggerObject : MonoBehaviour
{
    [Header("Select which Tags to interact with.")]
    [TagSelector]
    public string[] TagFilterArray = new string[] { };

    [Header("Enable/Disable the Enter trigger")]
    [SerializeField]
    private bool EnterTrigger = false;
    [SerializeField]
    private UnityEvent<Collider> OnEnterTrigger;

    [Header("Enable/Disable the Stay trigger")]
    [SerializeField]
    bool StayTrigger = false;
    [SerializeField]
    private UnityEvent<Collider> WhileInsideTrigger;

    [Header("Enable/Disable the Exit trigger")]
    [SerializeField]
    bool ExitTrigger = false;
    [SerializeField]
    private UnityEvent<Collider> OnExitTrigger;
 
    private void Start()
    {
        Collider collider = gameObject.GetComponent<Collider>();
        collider.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!EnterTrigger) return;
        if(!TagCheck(other.gameObject.tag))return;
        OnEnterTrigger.Invoke(other);
                
    }

    private void OnTriggerStay(Collider other)
    {
        if (!StayTrigger) return;
        if (!TagCheck(other.gameObject.tag)) return;
        WhileInsideTrigger.Invoke(other);
    }

    private void OnTriggerExit(Collider other)
    {
        if (!ExitTrigger) return;
        if (!TagCheck(other.gameObject.tag)) return;
        OnExitTrigger.Invoke(other);
    }

    bool TagCheck(string colliderTag)
    {
        foreach (string tag in TagFilterArray)
        {
            if (tag == colliderTag)return true;
        }
        return false;
    }
}




