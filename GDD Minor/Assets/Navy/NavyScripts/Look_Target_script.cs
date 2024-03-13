using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

[RequireComponent(typeof(SphereCollider))]
public class Look_Target_script : MonoBehaviour
{
    [Header("Camera Setup")]
    [Space]
    [Tooltip("In the Camera Prefab set the look at target, place the camera where you want.")]
    [SerializeField]
    CinemachineVirtualCamera CameraVirtual;
    bool m_Enable = true;
    public void EnableViewing()
    {
        m_Enable = !CameraVirtual.isActiveAndEnabled;
        CameraVirtual.enabled = m_Enable;
    }
    public void DisableViewing()
    {
        CameraVirtual.enabled = false;
    }
       
}
