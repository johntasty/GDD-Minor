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
    [SerializeField]
    private Transform doorPivotObject;
    
    [Tooltip("The amount of time it will take for the door to animate")]
    [Min(0)]
    [SerializeField]
    private float durationSeconds = 1.0f;

    [SerializeField]
    private bool animatePosition = true;

    [SerializeField]
    private bool animateRotation = true;

    [SerializeField]
    [Tooltip("The position the object will end up in after the animation is done.")]
    private Vector3 targetPosition = new Vector3();
    [SerializeField]
    [Tooltip("The rotation the object will end up in after the animation is done.")]
    private Vector3 targetRotation = new Vector3();
    
    [SerializeField]
    [Tooltip("This curve controls the speed of the animation throughout.")]
    private AnimationCurve animationCurve = new AnimationCurve();
    
    [SerializeField]
    [Tooltip("The easing method used.")]
    private EasingType rotationEasingType = EasingType.Linear;

    private bool _isMoving = false;
    private Vector3 _originalPosition;
    private Vector3 _originalRotation;
    private Coroutine _animationRoutine;
    private bool _interruptAnimation;

    private void Start()
    {
        if (doorPivotObject == null)
            doorPivotObject = transform;
    }

    public void AnimateDoor()
    {
        // if (_isMoving)
            
        // Quaternion targetRotation = IsOpened ? _closedRotation : _openRotation;
        // StartCoroutine(RotateDoor(targetRotation));
        _animationRoutine = StartCoroutine(RotateDoor());
    }

    private IEnumerator RotateDoor()
    {
        _isMoving = true;

        float elapsedTime = 0f;
        
        while (elapsedTime < durationSeconds)
        {
            float percentDone = elapsedTime / durationSeconds;
            float t = animationCurve.Evaluate(percentDone);
            print(percentDone);
            print(t);

            if (animatePosition)
            {
                Vector3 slerpedPosition = Vector3.Slerp(_originalPosition, targetPosition, t);
                doorPivotObject.position = slerpedPosition;
            }

            if (animateRotation)
            {
                Vector3 slerpedRotation = Vector3.Slerp(_originalRotation, targetRotation, t);
                Quaternion newRotation = Quaternion.Euler(slerpedRotation);
                doorPivotObject.rotation = newRotation;
            }
            
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        if (animateRotation)
        {
            doorPivotObject.rotation = Quaternion.Euler(targetRotation);
            (_originalRotation, targetRotation) = (targetRotation, _originalRotation);
        }

        if (animatePosition)
        {
            doorPivotObject.position = targetPosition;
            (_originalPosition, targetPosition) = (targetPosition, _originalPosition);
        }

        
        
        _isMoving = false;
    }
}
