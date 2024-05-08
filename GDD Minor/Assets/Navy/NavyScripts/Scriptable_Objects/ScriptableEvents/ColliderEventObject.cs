using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(menuName = "ScriptableObjects/ColliderEventObject", order = 2)]
public class ColliderEventObject : ScriptableObject
{
    private List<ColliderEventListener> listeners = new List<ColliderEventListener>();

    public void RaiseEvent(object param)
    {
        // Call each listener with the passed Collider
        for (int i = listeners.Count - 1; i >= 0; i--)
        {
            listeners[i].OnEventRaised(param);
        }
    }

    public void Register(ColliderEventListener listener)
    {
        if (!listeners.Contains(listener))
        {
            listeners.Add(listener);
        }
    }

    public void Unregister(ColliderEventListener listener)
    {
        if (listeners.Contains(listener))
        {
            listeners.Remove(listener);
        }
    }
}
