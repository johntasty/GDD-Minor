using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum EasingType
{
    Linear,
    EaseIn,
    EaseOut,
    EaseInOut
}

public class ProceduralDoor : Interactable
{
    [Header("Procedural Door Settings")]
    [Tooltip("The object the door will use as its pivot point.\n" +
             "Leave empty if you want to use the pivot of the object that has this script attached.")]
    public Transform DoorPivotObject;
    [Tooltip("The amount of time it will take for the door to animate")]
    [Min(0)]
    public float DurationSeconds = 1.0f;
    [Tooltip("The amount of degrees the door will rotate.")]
    [Range(-359, 359)]
    public int RotationDegrees = 90;
    [Tooltip("The easing method used.")]
    public EasingType RotationEasingType = EasingType.Linear;

    public bool IsOpened = false;
    
    private bool _isMoving = false;
    private Quaternion _closedRotation;
    private Quaternion _openRotation;

    private void Start()
    {
        if (DoorPivotObject == null)
            DoorPivotObject = transform;

        if (IsOpened)
        {
            _openRotation = DoorPivotObject.rotation;
            _closedRotation = Quaternion.Euler(DoorPivotObject.eulerAngles + Vector3.up * RotationDegrees);
        }
        else
        {
            _closedRotation = DoorPivotObject.rotation;
            _openRotation = Quaternion.Euler(DoorPivotObject.eulerAngles + Vector3.up * RotationDegrees);
        }
    }

    public void AnimateDoor()
    {
        if (_isMoving)
            return;

        Quaternion targetRotation = IsOpened ? _closedRotation : _openRotation;
        StartCoroutine(RotateDoor(targetRotation));
    }

    private IEnumerator RotateDoor(Quaternion targetRotation)
    {
        _isMoving = true;

        Quaternion startRotation = DoorPivotObject.rotation;
        float elapsedTime = 0f;

        while (elapsedTime < DurationSeconds)
        {
            float t = Mathf.Clamp01(elapsedTime / DurationSeconds);
            
            switch (RotationEasingType)
            {
                case EasingType.Linear:
                    break;
                case EasingType.EaseIn:
                    t = Mathf.Pow(t, 2);
                    break;
                case EasingType.EaseOut:
                    t = 1 - Mathf.Pow(1 - t, 2);
                    break;
                case EasingType.EaseInOut:
                    t = t < 0.5f ? Mathf.Pow(t * 2, 2) * 0.5f : 1 - Mathf.Pow(2 - t * 2, 2) * 0.5f;
                    break;
            }
            
            DoorPivotObject.rotation = Quaternion.Slerp(startRotation, targetRotation, t);
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        DoorPivotObject.rotation = targetRotation;
        IsOpened = !IsOpened;
        _isMoving = false;
    }
}
