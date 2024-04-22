using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using Bezier_Util_Functions;
using System;

public class Path_Spline : MonoBehaviour
{
    [SerializeField]
    private Spline_Point path;
    [SerializeField]
    private Spline_Path path_spline;
  
    [SerializeField]
    private bool loop;

    [SerializeField]
    private float handleSize = .03f;
    [SerializeField]
    private float globalNormalsAngle = 0f;
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
                SetControlPoint(0, path.PointsEditor[0]);
            }
        }
    }
    public float GlobalNormalsAngle { get => globalNormalsAngle; set => globalNormalsAngle = value; }
    public float HandleSize { set => handleSize = value; get => handleSize; }
    public int CurveCount {get => (path.PointsEditor.Count - 1) / 3;}    
    public int ControlPointCount{get => path.PointsEditor.Count;}
    public Spline_Point Path { get => path; set => path = value; }
    public Spline_Path Path_spline { get => path_spline; set => path_spline = value; }

    #endregion
    public Vector3 GetControlPoint(int index)
    {
        return path.PointsEditor[index];
    }
    public float GetNormalAngle(int index)
    {
        return path.Angles[index] % 360;
    }
    public void SetNormalAngle(int index, float angle)
    {
        path.Angles[index] = angle;
        if (loop)
        {
            if(index == path.Angles.Count - 1 || index == 0)
            {
                path.Angles[path.Angles.Count - 1] = angle;
                path.Angles[0] = angle;
            }
            
        }

    }
    public void SetControlPoint(int index, Vector3 point)
    {
        int count = path.PointsEditor.Count;
        if (index % 3 == 0)
        {
            Vector3 delta = point - path.PointsEditor[index];
            if (loop)
            {
                if (index == 0)
                {
                    path.PointsEditor[1] += delta;
                    path.PointsEditor[count - 2] += delta;
                    path.PointsEditor[count - 1] = point;
                }
                else if (index == count - 1)
                {
                    path.PointsEditor[0] = point;
                    path.PointsEditor[1] += delta;
                    path.PointsEditor[index - 1] += delta;
                }
                else
                {
                    path.PointsEditor[index - 1] += delta;
                    path.PointsEditor[index + 1] += delta;
                }
            }
            else
            {
                if (index > 0)
                {
                    path.PointsEditor[index - 1] += delta;
                }
                if (index + 1 < count)
                {
                    path.PointsEditor[index + 1] += delta;
                }
            }
        }
        path.PointsEditor[index] = point;
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
                fixedIndex = path.PointsEditor.Count - 2;
            }
            enforcedIndex = middleIndex + 1;
            if (enforcedIndex >= path.PointsEditor.Count)
            {
                enforcedIndex = 1;
            }
        }
        else
        {
            fixedIndex = middleIndex + 1;
            if (fixedIndex >= path.PointsEditor.Count)
            {
                fixedIndex = 1;
            }
            enforcedIndex = middleIndex - 1;
            if (enforcedIndex < 0)
            {
                enforcedIndex = path.PointsEditor.Count - 2;
            }
        }
        Vector3 middle = path.PointsEditor[middleIndex];
        Vector3 enforcedTangent = middle - path.PointsEditor[fixedIndex];
        if (mode == BezierControlPointMode.Aligned)
        {
            enforcedTangent = enforcedTangent.normalized * Vector3.Distance(middle, path.PointsEditor[enforcedIndex]);
        }
        path.PointsEditor[enforcedIndex] = middle + enforcedTangent;
    }
    public void Reset()
    {
        path = new Spline_Point();        
        path.Reset();

        Vector3[]  points = new Vector3[] {
            new Vector3(1f, 0f, 0f),
            new Vector3(2f, 0f, 0f),
            new Vector3(3f, 0f, 0f),
            new Vector3(4f, 0f, 0f)
        };
        path.PointsEditor.AddRange(points);

        float[] normalsAngles = new float[2] { 0f, 0f};
        path.Angles.AddRange(normalsAngles);

        modes = new BezierControlPointMode[] {
            BezierControlPointMode.Free,
            BezierControlPointMode.Free
        };

        path_spline = new Spline_Path();
    }
    public void ResetNormals()
    {
        for (int i = 0; i < path.Angles.Count; i++)
        {
            path.Angles[i] = 0f;
        }
        GlobalNormalsAngle = 0f;
    }

    public Vector3 GetPoint(float t)
    {
        int length = path.PointsEditor.Count;
        int i;
        if (t >= 1f)
        {
            t = 1f;
            i = length - 4;
        }
        else
        {
            t = Mathf.Clamp01(t) * CurveCount;
            i = (int)t;
            t -= i;
            i *= 3;
        }
        return transform.TransformPoint(BezierUtils.GetPointBezier(path.PointsEditor[i], path.PointsEditor[i + 1], path.PointsEditor[i + 2], path.PointsEditor[i + 3], t));
    }
    public Vector3 GetVelocity(float t)
    {
        int length = path.PointsEditor.Count;
        int i;
        if (t >= 1f)
        {
            t = 1f;
            i = length - 4;
        }
        else
        {
            t = Mathf.Clamp01(t) * CurveCount;
            i = (int)t;
            t -= i;
            i *= 3;
        }
        return transform.TransformPoint(BezierUtils.GetFirstDerivative(path.PointsEditor[i], path.PointsEditor[i + 1], path.PointsEditor[i + 2], path.PointsEditor[i + 3], t)) -
            transform.position;
    }
    public Vector3 GetDirection(float t)
    {
        return GetVelocity(t).normalized;
    }
    public Vector3 CalculateNormal(Vector3 tangent, float t) 
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
   
    public Vector3 RotateNormal(float t, Vector3 normal)
    {
        float curveSegmentSizeT = 1f / CurveCount;
        int i = 0;
        while (t > i * curveSegmentSizeT)
        {
            i++;
        }
        i = Mathf.Clamp(i - 1, 0, path.Angles.Count - 2);

        Vector3 tangent = GetDirection(t);
       
        float prevPointT = i * curveSegmentSizeT;
        float nextPointT = (i + 1) * curveSegmentSizeT;
        float alpha = Mathf.InverseLerp(prevPointT, nextPointT, t);

        float normalAngularOffset = Mathf.Lerp(path.Angles[i], path.Angles[i + 1], alpha);

        Quaternion rot = Quaternion.AngleAxis(normalAngularOffset, tangent);       
        Quaternion rotGlobal = Quaternion.AngleAxis(globalNormalsAngle, tangent);      
        return rotGlobal * rot * normal;
    }
    public void AddCurve()
    {
        int length = path.PointsEditor.Count;
        Vector3 point = path.PointsEditor[length - 1];
        point.x += 1f;
        path.PointsEditor.Add(point);
        point.x += 1f;
        path.PointsEditor.Add(point);
        point.x += 1f;
        path.PointsEditor.Add(point);

        path.Angles.Add(globalNormalsAngle);
      
        Array.Resize(ref modes, modes.Length + 1);
        modes[modes.Length - 1] = modes[modes.Length - 2];

        EnforceMode(length - 4);
        if (loop)
        {
            path.PointsEditor[length - 1] = path.PointsEditor[0];
            modes[modes.Length - 1] = modes[0];
            EnforceMode(0);
        }
    }
    public void RemoveCurve(int curveIndex)
    {
        if (CurveCount <= 1) { Debug.LogError("Needs more than one Curve"); return; }
        int length = path.PointsEditor.Count;
        bool isLastCurve = (loop && curveIndex == CurveCount) || (!loop && curveIndex == CurveCount - 1);
        bool isStartCurve = curveIndex == 0;
        int beginCurveIndex = curveIndex;
        int startCurveIndex = beginCurveIndex;

        if (isStartCurve)
        {
            startCurveIndex += 1;
        }
        else if (isLastCurve)
        {
            startCurveIndex = length - 2;
        }
        //Removing control points first
        RemovePoint(startCurveIndex + 1);
        RemovePoint(startCurveIndex - 1);

        if (!isLastCurve || !loop)
        {
            RemovePoint(startCurveIndex);
            var modeIndex = (beginCurveIndex) / 3;

            List<BezierControlPointMode> tmpMode = new List<BezierControlPointMode>(modes);
            tmpMode.RemoveAt(modeIndex);
            modes = tmpMode.ToArray();
            path.Angles.RemoveAt(modeIndex);       
        }

        int nextPointIndex = (isLastCurve || startCurveIndex >= length) ? length - 1 : startCurveIndex;
        if (loop && CurveCount == 1)
        {
            loop = false;
        }
        if (loop)
        {
            SetControlPoint(0, path.PointsEditor[0]);
        }
        //Shift points to the left connect
        SetControlPoint(nextPointIndex, path.PointsEditor[nextPointIndex]);
    }
    public void InsertCurve(int curveIndex, float t)
    {
        if (CurveCount == 1) { AddCurve(); return; }
        t = Mathf.Clamp01(t);
               
        float middle = (1f / (CurveCount)) * .5f;
        float midPoint = t + middle;
      
        float newT = midPoint - (middle * .5f);
        Vector3 newPoint = GetPoint(newT);
        path.PointsEditor.Insert(curveIndex + 2, newPoint);

        newT = midPoint;
        Vector3 pointOnCurve1 = GetPoint(newT);
        path.PointsEditor.Insert(curveIndex + 3, pointOnCurve1);

        newT = midPoint + (middle * .5f);
        Vector3 pointOnCurve2 = GetPoint(newT);
        path.PointsEditor.Insert(curveIndex + 4, pointOnCurve2);
              
        path.Angles.Insert((curveIndex / 3) + 1, globalNormalsAngle);
   
        List<BezierControlPointMode> tmpModes = new List<BezierControlPointMode>(modes);        
        tmpModes.Insert((curveIndex / 3) + 1, modes[curveIndex / 3]);
        modes = tmpModes.ToArray();
       
        EnforceMode((curveIndex / 3) + 1);

    }
    private void RemovePoint(int pointIndex)
    {
        //Casting to list because its easier       
        if (pointIndex > path.PointsEditor.Count - 1) { Debug.LogError("Out Of Range Index"); return; }
        path.PointsEditor.RemoveAt(pointIndex);   
    }

    
#if UNITY_EDITOR
    private void OnDrawGizmos()
    {
        GameObject selectedObj = UnityEditor.Selection.activeGameObject;
        if (selectedObj != gameObject)
        {
            if(path_spline.Points.Count > 0)
            {
                for (int i = 0; i < path_spline.Points.Count; i++)
                {
                    int nextI = i + 1;
                    if (nextI >= path_spline.Points.Count)
                    {
                        if (loop)
                        {
                            nextI %= path_spline.Points.Count;
                        }
                        else
                        {
                            break;
                        }
                    }
                    Gizmos.DrawLine(path_spline.Points[i], path_spline.Points[nextI]);
                }
            }
        }

    }
#endif

}

