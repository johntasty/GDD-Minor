using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "ScriptableObjects/Event_Object", order = 1)]
public class EventObject : ScriptableObject
{
    List<EventListener> listeners = new List<EventListener>();

    public void RaiseEvent()
    {
        for (int i = listeners.Count - 1; i >= 0; i--) 
        {
            listeners[i].OnEventRaised();
        }
    }

    public void Register(EventListener listener)
    {
        if(!listeners.Contains(listener))
        {
            listeners.Add(listener);
        }
    }

    public void Unregister(EventListener listener)
    {
        if(listeners.Contains(listener))
        {
            listeners.Remove(listener);
        }
    }
}
