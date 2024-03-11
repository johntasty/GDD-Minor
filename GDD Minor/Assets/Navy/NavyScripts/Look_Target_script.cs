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
    CinemachineVirtualCamera CameraVirtual;

    public void EnableViewing(Collider other)
    {
        CameraVirtual.enabled = true;
    }
    public void DisableViewing(Collider other)
    {
        CameraVirtual.enabled = false;
    }
    
}
