using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class ObjectSet<T> : ScriptableObject
{
    public List<T> objects = new List<T>();

    public void Add(T obj)
    { if (!objects.Contains(obj)) 
        {
            objects.Add(obj);
        } 
    }
    public void Remove(T obj)
    {
        if (objects.Contains(obj))
        {
            objects.Remove(obj);
        }
    }
}
