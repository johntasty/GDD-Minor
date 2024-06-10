using System.Collections;
using UnityEditor;
using UnityEngine;


public class ProcedurallyAnimatableObject : MonoBehaviour
{
    [Header("Animation Settings")]
    
    [Tooltip("The object that will used as a pivot point.\n" +
             "Leave empty if you want to use the pivot of the object that has this script attached.")]
    [SerializeField]
    private Transform pivotObject;
    
    [Tooltip("The amount of time it will take for the door to animate")]
    [Min(0)]
    [SerializeField]
    public float durationSeconds = 1.0f;

    //[SerializeField]
    [HideInInspector]
    public bool AnimatePosition = false;

    //[SerializeField]
    [HideInInspector]
    [Tooltip("The position the object will end up in after the animation is done.")]
    public Vector3 targetPosition;

    //[SerializeField]
    [HideInInspector]
    [Tooltip("This curve controls the speed of the animation throughout.")]
    public AnimationCurve positionCurve = AnimationCurve.Linear(0, 0, 1, 1);

    [HideInInspector]
    public bool AnimateRotation = false;

    [HideInInspector]
    [Tooltip("The rotation the object will end up in after the animation is done.")]
    public float targetRotation;
    private Quaternion targetRot;
    [HideInInspector]
    [Tooltip("This curve controls the speed of the animation throughout.")]
    public AnimationCurve rotationCurve = AnimationCurve.Linear(0, 0, 1, 1);

    private bool _isMoving = false;
    private Vector3 _originalPosition;
    private Quaternion _originalRotation;
    private Coroutine _animationRoutine;
    private enum AnimationUpdate
    {
        physicsUpdate = 1,
        regularUpdate = 2
    }
    [SerializeField] private AnimationUpdate animationUpdate = AnimationUpdate.regularUpdate;

    public bool IsMoving { get => _isMoving; set => _isMoving = value; }

    private void Start()
    {
        if (pivotObject == null)
            pivotObject = transform;

        _originalPosition = pivotObject.position;
        _originalRotation = pivotObject.localRotation;
        targetRot = Quaternion.AngleAxis(targetRotation, Vector3.up);
    }

    public void StartAnimation()
    {
        if (_isMoving) return;

        _animationRoutine = StartCoroutine(AnimationCoroutine());
    }

    private IEnumerator AnimationCoroutine()
    {
        _isMoving = true;

        float elapsedTime = 0f;

        var updateAnimation = animationUpdate == AnimationUpdate.regularUpdate ? null : new WaitForEndOfFrame();
        
        while (elapsedTime < durationSeconds)
        {
            float percentDone = elapsedTime / durationSeconds;

            if (AnimatePosition)
            {
                float t = positionCurve.Evaluate(percentDone);
                Vector3 slerpedPosition = Vector3.Lerp(_originalPosition, targetPosition, t);
                pivotObject.position = slerpedPosition;
            }

            if (AnimateRotation)
            {
                float t = rotationCurve.Evaluate(percentDone);                
                Quaternion newRotation = Quaternion.Slerp(_originalRotation, targetRot, t);
                pivotObject.localRotation = newRotation;
            }

            elapsedTime += Time.deltaTime;
            yield return updateAnimation;
        }

        if (AnimateRotation)
        {
            pivotObject.localRotation = targetRot;
            (_originalRotation, targetRot) = (targetRot, _originalRotation);
        }

        if (AnimatePosition)
        {
            pivotObject.position = targetPosition;
            (_originalPosition, targetPosition) = (targetPosition, _originalPosition);
        }
        
        _isMoving = false;
    }
}



#if UNITY_EDITOR
[CustomEditor(typeof(ProcedurallyAnimatableObject))]
public class ProcedurallyAnimatableObjectEditor : Editor
{
    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();
        var script = (ProcedurallyAnimatableObject)target;
        //if (script != null) return;
        GUILayout.Space(EditorGUIUtility.singleLineHeight);
        GUILayout.Label("Position Settings", EditorStyles.boldLabel);
        script.AnimatePosition = GUILayout.Toggle(script.AnimatePosition, "Animate Position");
        if (script.AnimatePosition)
        {
            script.targetPosition = EditorGUILayout.Vector3Field("Target Position: ", script.targetPosition);
            GUILayout.Label("Position Curve:");
            script.positionCurve = EditorGUILayout.CurveField(script.positionCurve);
        }

        GUILayout.Space(EditorGUIUtility.singleLineHeight);
        GUILayout.Label("Rotation Settings", EditorStyles.boldLabel);
        script.AnimateRotation = GUILayout.Toggle(script.AnimateRotation, "Animate Rotation");
        if (script.AnimateRotation)
        {
            script.targetRotation = EditorGUILayout.FloatField("Target Rotation: ", script.targetRotation);
            GUILayout.Label("Rotation Curve:");
            script.rotationCurve = EditorGUILayout.CurveField(script.rotationCurve);
        }
    }
}
#endif