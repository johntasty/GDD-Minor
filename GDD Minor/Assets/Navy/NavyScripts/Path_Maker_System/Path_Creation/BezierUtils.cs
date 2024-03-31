using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Bezier_Util_Functions
{
    public class BezierUtils
    {
        public static Vector3 GetPointBezier(Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3, float t)
        {
            t = Mathf.Clamp01(t);
            float oneMinusT = 1f - t;
            Vector3 interpolatedPoint = oneMinusT * oneMinusT * oneMinusT * p0 +
                                        3f * oneMinusT * oneMinusT * t * p1 +
                                        3f * oneMinusT * t * t * p2 +
                                        t * t * t * p3;
            return interpolatedPoint;
        }
        public static Vector3 GetFirstDerivative(Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3, float t)
        {
            t = Mathf.Clamp01(t);
            float oneMinusT = 1f - t;
            Vector3 derivativePoint = 3f * oneMinusT * oneMinusT * (p1 - p0) +
                                      6f * oneMinusT * t * (p2 - p1) +
                                      3f * t * t * (p3 - p2);
            return derivativePoint;
        }
    }
}

