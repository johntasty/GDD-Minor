
using System;
using UnityEngine;
using UnityEngine.Events;

[Serializable]
public class UnityObjectEvent : UnityEvent<object> { }
public class ColliderEventListener : MonoBehaviour
{
    [SerializeField] private ColliderEventObject eventObject;
    [SerializeField] private UnityObjectEvent response;

    private void OnEnable()
    {
        eventObject.Register(this);
    }

    private void OnDisable()
    {
        eventObject.Unregister(this);
    }

    public void OnEventRaised(object param)
    {
        // Invoke the response with the passed Collider
        response.Invoke(param);
    }
}
