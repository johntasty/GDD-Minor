using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using Bezier_Util_Functions;
using System;
using UnityEngine.Rendering.PostProcessing;
using static Path_Spline;
using Unity.VisualScripting.Antlr3.Runtime.Misc;
using System.Drawing;
public class Path_Spline : MonoBehaviour
{
    [SerializeField]
    private Vector3[] points;
    [HideInInspector]
    private float[] normalsAngles;
    [SerializeField]
    private bool loop;
    [SerializeField]
    private float handleSize;
    private float globalNormalsAngle;
    public enum BezierControlPointMode
    {
        Free,
        Aligned,
        Mirrored
    }
    [SerializeField]
    private BezierControlPointMode[] modes;

    #region Public Accessors
    public bool Loop
    {
        get
        {
            return loop;
        }
        set
        {
            loop = value;
            if (value == true)
            {
                modes[modes.Length - 1] = modes[0];
                SetControlPoint(0, points[0]);
            }
        }
    }
    public float GlobalNormalsAngle { get => globalNormalsAngle; set => globalNormalsAngle = value; }
    public float HandleSize { set => handleSize = value; get => handleSize; }
    public int CurveCount {get => (points.Length - 1) / 3;}    
    public int ControlPointCount{get => points.Length;}

    #endregion
    public Vector3 GetControlPoint(int index)
    {
        return points[index];
    }
    public float GetNormalAngle(int index)
    {
        return normalsAngles[index] % 360;
    }
    public void SetNormalAngle(int index, float angle)
    {        
        normalsAngles[index] = angle;
    }
    public void SetControlPoint(int index, Vector3 point)
    {
        
        if (index % 3 == 0)
        {
            Vector3 delta = point - points[index];
            if (loop)
            {
                if (index == 0)
                {
                    points[1] += delta;
                    points[points.Length - 2] += delta;
                    points[points.Length - 1] = point;
                }
                else if (index == points.Length - 1)
                {
                    points[0] = point;
                    points[1] += delta;
                    points[index - 1] += delta;
                }
                else
                {
                    points[index - 1] += delta;
                    points[index + 1] += delta;
                }
            }
            else
            {
                if (index > 0)
                {
                    points[index - 1] += delta;
                }
                if (index + 1 < points.Length)
                {
                    points[index + 1] += delta;
                }
            }
        }
        points[index] = point;
        EnforceMode(index);

    }
    public BezierControlPointMode GetControlPointMode(int index)
    {
        return modes[(index + 1) / 3];
    }

    public void SetControlPointMode(int index, BezierControlPointMode mode)
    {
        int modeIndex = (index + 1) / 3;
        modes[modeIndex] = mode;
        if (loop)
        {
            if (modeIndex == 0)
            {
                modes[modes.Length - 1] = mode;
            }
            else if (modeIndex == modes.Length - 1)
            {
                modes[0] = mode;
            }
        }
        EnforceMode(index);
    }
    private void EnforceMode(int index)
    {
        int modeIndex = (index + 1) / 3;
        BezierControlPointMode mode = modes[modeIndex];
        if (mode == BezierControlPointMode.Free || !loop && (modeIndex == 0 || modeIndex == modes.Length - 1))
        {
            return;
        }
        int middleIndex = modeIndex * 3;
        int fixedIndex, enforcedIndex;
        if (index <= middleIndex)
        {
            fixedIndex = middleIndex - 1;
            if (fixedIndex < 0)
            {
                fixedIndex = points.Length - 2;
            }
            enforcedIndex = middleIndex + 1;
            if (enforcedIndex >= points.Length)
            {
                enforcedIndex = 1;
            }
        }
        else
        {
            fixedIndex = middleIndex + 1;
            if (fixedIndex >= points.Length)
            {
                fixedIndex = 1;
            }
            enforcedIndex = middleIndex - 1;
            if (enforcedIndex < 0)
            {
                enforcedIndex = points.Length - 2;
            }
        }
        Vector3 middle = points[middleIndex];
        Vector3 enforcedTangent = middle - points[fixedIndex];
        if (mode == BezierControlPointMode.Aligned)
        {
            enforcedTangent = enforcedTangent.normalized * Vector3.Distance(middle, points[enforcedIndex]);
        }
        points[enforcedIndex] = middle + enforcedTangent;
    }
    public void Reset()
    {
       
        points = new Vector3[] {
            new Vector3(1f, 0f, 0f),
            new Vector3(2f, 0f, 0f),
            new Vector3(3f, 0f, 0f),
            new Vector3(4f, 0f, 0f)
        };
        normalsAngles = new float[] { 0f, 0f};

        modes = new BezierControlPointMode[] {
            BezierControlPointMode.Free,
            BezierControlPointMode.Free
        };
    }
    public Vector3 GetPoint(float t)
    {
        int i;
        if (t >= 1f)
        {
            t = 1f;
            i = points.Length - 4;
        }
        else
        {
            t = Mathf.Clamp01(t) * CurveCount;
            i = (int)t;
            t -= i;
            i *= 3;
        }
        return transform.TransformPoint(BezierUtils.GetPointBezier(points[i], points[i + 1], points[i + 2], points[i + 3], t));
    }
    public Vector3 GetVelocity(float t)
    {
        int i;
        if (t >= 1f)
        {
            t = 1f;
            i = points.Length - 4;
        }
        else
        {
            t = Mathf.Clamp01(t) * CurveCount;
            i = (int)t;
            t -= i;
            i *= 3;
        }
        return transform.TransformPoint(BezierUtils.GetFirstDerivative(points[i], points[i + 1], points[i + 2], points[i + 3], t)) -
            transform.position;
    }
    public Vector3 GetDirection(float t)
    {
        return GetVelocity(t).normalized;
    }
    public Vector3 GetNormal(Vector3 tangent, float t) 
    {
        Vector3 previousPoint = GetPoint(t);
        Vector3 previousTangent = GetVelocity(t);
        Vector3 offset = (tangent - previousPoint);
        float sqrDst = offset.sqrMagnitude;

        Vector3 r = Vector3.up - offset * 2 / sqrDst * Vector3.Dot(offset, Vector3.up);
        Vector3 tDerv = previousTangent - offset * 2 / sqrDst * Vector3.Dot(offset, previousTangent);

        Vector3 v2 = tangent - tDerv;
        float c2 = Vector3.Dot(v2, v2);

        Vector3 finalRot = r - v2 * 2 / c2 * Vector3.Dot(v2, r);
        Vector3 n = Vector3.Cross(finalRot, tangent).normalized;
        return n;
    }   
    public Quaternion RotateNormal(float t, Vector3 tangent)
    {
        int i;
        if (t >= 1f)
        {
            t = 1f;
            i = points.Length - 4;
        }
        else
        {
            t = Mathf.Clamp01(t) * CurveCount;
            i = (int)t;
            t -= i;
            i *= 3;
        }
        int anchor = i / 3;
        float angleStart = GetNormalAngle(anchor) + globalNormalsAngle;
        float angleEnd = GetNormalAngle(anchor + 1) + globalNormalsAngle;
        
        float angleD = Mathf.DeltaAngle(angleStart, angleEnd);
        
        Quaternion rot = Quaternion.AngleAxis(angleD, tangent);
        return rot;
    }
    public void AddCurve()
    {        
        Vector3 point = points[points.Length - 1];
        Array.Resize(ref points, points.Length + 3);
        point.x += 1f;
        points[points.Length - 3] = point;
        point.x += 1f;
        points[points.Length - 2] = point;
        point.x += 1f;
        points[points.Length - 1] = point;

        Array.Resize(ref normalsAngles, normalsAngles.Length + 1);
        normalsAngles[normalsAngles.Length - 1] = globalNormalsAngle;

        Array.Resize(ref modes, modes.Length + 1);
        modes[modes.Length - 1] = modes[modes.Length - 2];

        EnforceMode(points.Length - 4);
        if (loop)
        {
            points[points.Length - 1] = points[0];
            modes[modes.Length - 1] = modes[0];
            EnforceMode(0);
        }
    }
    
}
