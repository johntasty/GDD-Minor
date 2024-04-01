using System;
using System.Collections;
using UnityEngine;


public class Path_Tracer : MonoBehaviour
{
    public enum animationStyle { Once, Loop, Ping_Pong };
    #region object variables
    private Spline_Path pathArrays;
    private IEnumerator objectAnimator;
    private bool moving = false;      
    #endregion
    
    #region inpsector fields     
    [SerializeField]
    private Path_Spline splinePath;

    [SerializeField]
    private float duration = 1f;

    [SerializeField]
    private animationStyle animationMode;
    [SerializeField]
    private bool lookForward = true;
    [SerializeField]
    private bool rotateNormal = true;
    #endregion
    #region Accessors
    public float Duration { get => duration; set => duration = value; }
    public animationStyle AnimationMode { get => animationMode; set => animationMode = value; }
    public bool Moving { get => moving; set => moving = value; }
    public IEnumerator ObjectAnimator { get => objectAnimator; set => objectAnimator = value; }
    public Spline_Path PathArrays { get => pathArrays; set => pathArrays = value; }
    #endregion
    void Start()
    {
        pathArrays = splinePath.Path_spline;
        BeginAnimation();       
    }

    public void StopAnimation()
    {
        StopCoroutine(objectAnimator);
    }
    public void BeginAnimation()
    {
        switch (animationMode)
        {
            case animationStyle.Once:
                objectAnimator = MoveOnce();
                break;
            case animationStyle.Loop:
                objectAnimator = Loop();
                break;
            case animationStyle.Ping_Pong:
                objectAnimator = PingPong();
                break;
        }
        StartCoroutine(objectAnimator);
    }
    Quaternion LookForward(Vector3 startPos, Vector3 endPos, Vector3 startNormal, Vector3 endNormal, int rotation, float time,ref Quaternion startRot, ref Quaternion endRot)
    {   
        if (!lookForward) { return transform.rotation;}

        if (!rotateNormal) 
        {
            startRot = Quaternion.LookRotation(startPos * rotation, Vector3.up);
            endRot = Quaternion.LookRotation(endPos * rotation, Vector3.up);

            return Quaternion.Slerp(startRot, endRot, time % 1);
        }
        startRot = Quaternion.LookRotation(startPos * rotation, startNormal);
        endRot   = Quaternion.LookRotation(endPos * rotation, endNormal);

        return Quaternion.Slerp(startRot, endRot, time % 1);
    }
    IEnumerator MoveOnce()
    {
        moving = true;
        int pointsNum = pathArrays.Points.Count - 2;       

        Quaternion forwardLook = Quaternion.identity;
        Quaternion forwardLookEnd = Quaternion.identity;

        float timeElapsed = 0;
        float normalizedTime = 0;
        float betweenNormalized = 0;

        int index = 0;
        var waitForFixedUpdate = new WaitForFixedUpdate();
        do
        {
            normalizedTime = (timeElapsed / Duration);
            betweenNormalized = normalizedTime * pointsNum;
            index = Mathf.CeilToInt(normalizedTime * pointsNum);

            transform.position = Vector3.Lerp(pathArrays.Points[index], pathArrays.Points[index + 1], betweenNormalized % 1);

            transform.rotation = LookForward(pathArrays.Tangents[index], pathArrays.Tangents[index + 1],
                                            pathArrays.Normals[index], pathArrays.Normals[index + 1], 1,
                                            betweenNormalized, ref forwardLook, ref forwardLookEnd);

            timeElapsed += Time.fixedDeltaTime;           
            yield return waitForFixedUpdate;
        }
        while (timeElapsed < Duration);

        moving = false;
       
    }
    IEnumerator Loop()
    {
        moving = true;
        int pointsNum = pathArrays.Points.Count - 2; 
       
        Quaternion forwardLook    = Quaternion.identity;
        Quaternion forwardLookEnd = Quaternion.identity;

        float timeElapsed = 0;
        float normalizedTime = 0;
        float betweenNormalized = 0;

        int index = 0;
        var waitForFixedUpdate = new WaitForFixedUpdate();
        do
        {
            normalizedTime = (timeElapsed / Duration);
            betweenNormalized = normalizedTime * pointsNum;
            index = Mathf.CeilToInt(betweenNormalized) % (pointsNum + 1);
            
            transform.position = Vector3.Lerp(pathArrays.Points[index], pathArrays.Points[index + 1], betweenNormalized % 1);
            
            //LookForward(pathArrays.Tangents[index], pathArrays.Tangents[index + 1], 1,ref forwardLook, ref forwardLookEnd);
            transform.rotation = LookForward(pathArrays.Tangents[index], pathArrays.Tangents[index + 1],
                                             pathArrays.Normals[index], pathArrays.Normals[index + 1],
                                            1, betweenNormalized, ref forwardLook, ref forwardLookEnd);

            timeElapsed += Time.fixedDeltaTime;
            yield return waitForFixedUpdate;

        } while (moving);
    }
    IEnumerator PingPong()
    {
        moving = true;
        int pointsNum = pathArrays.Points.Count - 2;              

        Quaternion forwardLook = Quaternion.identity;
        Quaternion forwardLookEnd = Quaternion.identity;

        float timeElapsed = 0;
        float normalizedTime = 0;
        float betweenNormalized = 0;

        int index = 0;
        float previous = -1;
        var waitForFixedUpdate = new WaitForFixedUpdate();
        do
        {
            normalizedTime    = Mathf.PingPong(timeElapsed / Duration, 1);
            betweenNormalized = normalizedTime * pointsNum;
            index = Mathf.CeilToInt(betweenNormalized);
           
            transform.position = Vector3.Lerp(pathArrays.Points[index], pathArrays.Points[index + 1], betweenNormalized % 1); 
          
            int offset = normalizedTime  > previous ? 1 : -1;            
            //LookForward(pathArrays.Tangents[index], pathArrays.Tangents[index + 1], offset, ref forwardLook, ref forwardLookEnd);
            transform.rotation = LookForward(pathArrays.Tangents[index], pathArrays.Tangents[index + 1],
                                        pathArrays.Normals[index], pathArrays.Normals[index + 1],
                                        offset, betweenNormalized, ref forwardLook, ref forwardLookEnd);

            timeElapsed += Time.fixedDeltaTime;    
            previous = normalizedTime;
            yield return waitForFixedUpdate; 
        }
        while (moving);

        moving = false;
    }
}
