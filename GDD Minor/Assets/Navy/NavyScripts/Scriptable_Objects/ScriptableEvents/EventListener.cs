using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;


public class EventListener : MonoBehaviour
{
    [SerializeField] EventObject Events;
    [SerializeField] UnityEvent Response;

    private void OnEnable()
    {
        Events.Register(this);

    }
    private void OnDisable()
    {
        Events.Unregister(this);
    }

    public void OnEventRaised()
    {
        Response.Invoke();
    }
}
