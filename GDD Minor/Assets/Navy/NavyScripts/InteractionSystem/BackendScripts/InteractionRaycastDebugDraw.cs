using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

[ExecuteInEditMode]
public class InteractionRaycastDebugDraw : MonoBehaviour
{
    [Header("This debug line will not be drawn during runtime.\nIt's just to indicate how far the player can interact with things.")]
    public InteractionRaycast InteractionRaycast;
    // public float MaxInteractionDistance = 1f;
    public Color DrawColor = Color.red;
    
    private Transform _target;
    
    void Awake()
    {
        if (Application.isPlaying)
            Destroy(this);
        
        _target = gameObject.transform.GetChild(0);
    }

    private void FixedUpdate()
    {
        _target.position = new Vector3(0, 0, InteractionRaycast.MaxInteractionDistance);
    }

    void OnDrawGizmos()
    {
        Gizmos.color = DrawColor;
        Gizmos.DrawLine(gameObject.transform.position, InteractionRaycast.playerCamera.transform.TransformPoint(Vector3.forward * InteractionRaycast.MaxInteractionDistance));
    }
}
