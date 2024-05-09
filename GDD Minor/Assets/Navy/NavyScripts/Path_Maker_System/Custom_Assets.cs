using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class Custom_Assets 
{
    [MenuItem("Splines/Path Maker", false, 10)]
    static void CreateCustomSpline(MenuCommand menuCommand)
    {
        // Create a custom game object
        GameObject go = new GameObject("Spline_Path");
        go.AddComponent<Path_Spline>();
        // Ensure it gets reparented if this was a context click (otherwise does nothing)
        GameObjectUtility.SetParentAndAlign(go, menuCommand.context as GameObject);
        // Register the creation in the undo system
        Undo.RegisterCreatedObjectUndo(go, "Create " + go.name);
        Selection.activeObject = go;
    }

    [MenuItem("Splines/Path Tracer", false, 10)]
    static void CreateCustomTracer(MenuCommand menuCommand)
    {
        // Create a custom game object
        GameObject go = new GameObject("PathTracer");
        go.AddComponent<Path_Tracer>();
        // Ensure it gets reparented if this was a context click (otherwise does nothing)
        GameObjectUtility.SetParentAndAlign(go, menuCommand.context as GameObject);
        // Register the creation in the undo system
        Undo.RegisterCreatedObjectUndo(go, "Create " + go.name);
        Selection.activeObject = go;
    }
}
