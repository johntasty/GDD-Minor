using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEditor;

[RequireComponent(typeof(Collider))]
public class TriggerObject : MonoBehaviour
{

    [Serializable]
    public class CollisionEvent : UnityEvent<Collider> { }
    

    [Header("Select which Tags to interact with.")]
    [TagSelector]
    public string[] TagFilterArray = new string[] { };

    [HideInInspector]
    public bool EnterTrigger = false;

    [HideInInspector]
    public CollisionEvent onTriggerEnter = new CollisionEvent();    

    [HideInInspector]
    public bool StayTrigger = false;

    [HideInInspector]
    public CollisionEvent onTriggerStay = new CollisionEvent();

    [HideInInspector]
    public bool ExitTrigger = false;

    [HideInInspector]
    public CollisionEvent onTriggerExit = new CollisionEvent();

    private void Start()
    {
        Collider collider = gameObject.GetComponent<Collider>();
        collider.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!EnterTrigger) return;
        if(!TagCheck(other.gameObject.tag))return;
        onTriggerEnter.Invoke(other);
      
    }

    private void OnTriggerStay(Collider other)
    {
        if (!StayTrigger) return;
        if (!TagCheck(other.gameObject.tag)) return;
        onTriggerStay.Invoke(other);
    }

    private void OnTriggerExit(Collider other)
    {
        if (!ExitTrigger) return;
        if (!TagCheck(other.gameObject.tag)) return;
        onTriggerExit.Invoke(other);
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

#if UNITY_EDITOR
[CustomEditor(typeof(TriggerObject))]
public class EventEditor : Editor
{
    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        var script = (TriggerObject)target;
        GUILayout.Label("Trigger Settings\n Enable/Disable the triggers you need.", EditorStyles.boldLabel, GUILayout.Height(30));
        script.EnterTrigger = GUILayout.Toggle(script.EnterTrigger, "Enable Enter Trigger");
        script.StayTrigger = GUILayout.Toggle(script.StayTrigger, "Enable Stay Trigger");
        script.ExitTrigger = GUILayout.Toggle(script.ExitTrigger, "Enable Exit Trigger");

        if (script.EnterTrigger)
        {
            DrawGuiEvent("onTriggerEnter");           
        }

        if (script.StayTrigger)
        {
            DrawGuiEvent("onTriggerStay");           
        }

        if (script.ExitTrigger)
        {
            DrawGuiEvent("onTriggerExit");          
        }

    }

    void DrawGuiEvent(string propertyName)
    {
        this.serializedObject.Update();
        EditorGUILayout.PropertyField(this.serializedObject.FindProperty(propertyName), true);
        this.serializedObject.ApplyModifiedProperties();
    }
}
#endif
