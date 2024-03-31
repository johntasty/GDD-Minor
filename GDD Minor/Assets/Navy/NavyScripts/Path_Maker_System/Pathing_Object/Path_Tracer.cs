using System;
using System.Collections;
using System.Collections.Generic;
using System.Net;
using Unity.VisualScripting;
using UnityEngine;

public class Path_Tracer : MonoBehaviour
{
    #region object variables
    private Spline_Path pathArrays;
    private IEnumerator objectAnimator;
    private bool moving = false;
    public enum animationMode { Once, Loop, Ping_Pong };
    #endregion
    public float cc = 0;
    public float ccT = 0;
    #region inpsector fields   
  
    [SerializeField]
    Path_Spline PathArrays;
    [SerializeField]
    float Duration = 1f;
    [SerializeField]
    animationMode AnimationMode;
    #endregion

    #region Accessors
    public float _Duration { get => Duration; set => Duration = value; }
    public animationMode _AnimationMode { get => AnimationMode; set => AnimationMode = value; }
    public bool Moving { get => moving; set => moving = value; }
    #endregion
    void Start()
    {
        pathArrays = PathArrays.Path_spline;
        BeginAnimation();
       
        //StopCoroutine(objectAnimator);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
   
    public void BeginAnimation()
    {
        switch (AnimationMode)
        {
            case animationMode.Once:
                objectAnimator = MoveOnce();
                break;
            case animationMode.Loop:
                objectAnimator = Loop();
                break;
            case animationMode.Ping_Pong:
                objectAnimator = PingPong();
                break;
        }
        StartCoroutine(objectAnimator);
    }

    IEnumerator MoveOnce()
    {
        moving = true;
        int pointsNum = pathArrays.Points.Count - 1;
        float durationInPoints = Duration / pointsNum;
        float timeElapsed = 0;
        float timeBetween = 0;
        int index = 0;
        Vector3 positionStart = transform.position;
        do
        {
            float normalizedTime = timeElapsed / Duration;
            float betweenTime = timeBetween / durationInPoints;
            index = Mathf.CeilToInt(normalizedTime * pointsNum);

            betweenTime %= 1;

            if (betweenTime >= .95f)
            {
                positionStart = transform.position;
            }
         
            transform.position = Vector3.Lerp(positionStart, pathArrays.Points[index], betweenTime);

            
            timeElapsed += Time.deltaTime;
            timeBetween += Time.deltaTime;
            yield return null;
        }
        while (timeElapsed < Duration);

        moving = false;
       
    }
    IEnumerator Loop()
    {
        moving = true;
        int pointsNum = pathArrays.Points.Count - 1;
        float currentDuration = Duration;
        float durationInPoints = currentDuration / pointsNum;       
        float timeElapsed = 0;
       
        Vector3 positionStart = Vector3.zero;       
        int index = 0;
        do
        {
            if (!Mathf.Approximately(currentDuration, Duration)) { currentDuration = Duration; durationInPoints = currentDuration / pointsNum; }
            index++;
            index %= pointsNum;
            positionStart = transform.position;
            do
            {               
                transform.position = Vector3.Lerp(positionStart, pathArrays.Points[index], timeElapsed / durationInPoints);
                timeElapsed += Time.deltaTime;
                yield return null;
            } while (timeElapsed < durationInPoints);

            timeElapsed = 0;
            yield return null;

        } while (moving);
    }
    IEnumerator PingPong()
    {
        moving = true;
        float timeElapsed = 0;
        do
        {
            timeElapsed += Time.deltaTime;
            float normalizedTime = timeElapsed / Duration;

            yield return null;
        }
        while (timeElapsed < Duration);

        moving = false;
    }
}
