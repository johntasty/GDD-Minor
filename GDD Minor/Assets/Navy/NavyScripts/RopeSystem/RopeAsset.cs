using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class RopeAsset 
{
    [MenuItem("Rope/Rope Maker", false, 10)]
    static void CreateRope(MenuCommand menuCommand)
    {
        // Create a custom game object
        GameObject go = new GameObject("Rope");
        go.AddComponent<RopeHolder>();
        go.AddComponent<ColliderEventListener>();

        GameObject start = new GameObject("Rope_Start");
        GameObject end = new GameObject("Rope_End");

        go.GetComponent<RopeHolder>().StarPoint = start.transform;
        go.GetComponent<RopeHolder>().EndPoint = end.transform;
              
        end.AddComponent<BoxCollider>();
        end.AddComponent<TriggerObject>();
        // Ensure it gets reparented if this was a context click (otherwise does nothing)
        GameObjectUtility.SetParentAndAlign(go, menuCommand.context as GameObject);
        GameObjectUtility.SetParentAndAlign(start, go);
        GameObjectUtility.SetParentAndAlign(end, go);
        // Register the creation in the undo system
        Undo.RegisterCreatedObjectUndo(go, "Create " + go.name);
        Undo.RegisterCreatedObjectUndo(start, "Create " + start.name);
        Undo.RegisterCreatedObjectUndo(end, "Create " + end.name);
        Selection.activeObject = go;
    }
}
