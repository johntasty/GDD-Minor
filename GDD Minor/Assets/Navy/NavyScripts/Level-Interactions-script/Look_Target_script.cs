using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(SphereCollider))]
public class Look_Target_script : MonoBehaviour
{
    [Header("Camera Setup")]
    [Space]
    [Tooltip("In the Camera Prefab set the look at target, place the camera where you want.")]
    [SerializeField]
    CinemachineVirtualCamera p_CameraVirtual;

    private void OnTriggerEnter(Collider other)
    {
        p_CameraVirtual.enabled = true;
    }
    private void OnTriggerExit(Collider other)
    {
        p_CameraVirtual.enabled = false;
    }
    
}
