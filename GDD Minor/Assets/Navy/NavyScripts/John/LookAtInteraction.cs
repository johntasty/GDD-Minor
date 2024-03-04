using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(SphereCollider))]
public class LookAtInteraction : MonoBehaviour
{
    [Header("Camera Setup")]
    [Space]
    [Tooltip("In the Camera Prefab set the look at target, place the camera where you want.")]
    [SerializeField]
    CinemachineVirtualCamera m_CameraVirtual;

    private void OnTriggerEnter(Collider other)
    {
        m_CameraVirtual.enabled = true;
    }
    private void OnTriggerExit(Collider other)
    {
        m_CameraVirtual.enabled = false;
    }
    
}
