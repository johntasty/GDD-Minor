
using UnityEditor;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;
using static Path_Spline;

[CustomEditor(typeof(Path_Spline))]
public class SplineGui : Editor
{
    private Path_Spline curve;
    private Transform handleTransform;
    private Quaternion handleRotation;
    private float angleRotation;

    private float handleSize;
    private float NormalsAngle;
    private const float pickSize = .1f;
    private int selectedIndex = -1;

    private const int lineSteps = 10;

    private static Color[] modeColors = {
        Color.white,
        Color.yellow,
        Color.cyan
        };

    public override void OnInspectorGUI()
    {
        //DrawDefaultInspector();
        curve = (Path_Spline)target;
        EditorGUI.BeginChangeCheck();

        bool loop = EditorGUILayout.Toggle("Loop", curve.Loop);
        handleSize = EditorGUILayout.FloatField("Handle Size", curve.HandleSize);

        if (selectedIndex >= 0 && selectedIndex < curve.ControlPointCount)
        {
            DrawSelectedPointInspector();
           
        }
        else
        {
            //Rotates entire path
            NormalsAngle = EditorGUILayout.Slider("Global Normals Angle", curve.GlobalNormalsAngle, 0, 360);
            
        }     
        if (EditorGUI.EndChangeCheck())
        {
            EditorUtility.SetDirty(curve);
            curve.HandleSize = handleSize;
            curve.GlobalNormalsAngle = NormalsAngle;
            curve.Loop = loop;
        }
        if (GUILayout.Button("Add Curve"))
        {
            curve.AddCurve();
            EditorUtility.SetDirty(curve);
        }
        if (selectedIndex % 3 == 0)
        {
            if (GUILayout.Button("Remove Curve"))
            {
                curve.RemoveCurve(selectedIndex);
                EditorUtility.SetDirty(curve);
            }
            if (GUILayout.Button("Insert Curve"))
            {
                //point from 0-1 from all points
                int cu = (selectedIndex / 3);
                float po = (float)cu / (float)(curve.CurveCount);
               
                curve.InsertCurve(selectedIndex, po );
                EditorUtility.SetDirty(curve);
            }
        }
       
    }
   
    
    private void OnSceneGUI()
    {

        curve = target as Path_Spline;
        handleTransform = curve.transform;
        handleRotation = Tools.pivotRotation == PivotRotation.Local ? handleTransform.rotation : Quaternion.identity;

        Vector3 p0 = ShowPoint(0);
        for (int i = 1; i < curve.ControlPointCount; i += 3)
        {
            Vector3 p1 = ShowPoint(i);
            Vector3 p2 = ShowPoint(i + 1);
            Vector3 p3 = ShowPoint(i + 2);

            Handles.color = Color.white;
            Handles.DrawLine(p0, p1);            
            Handles.DrawLine(p2, p3);
           
            Handles.DrawBezier(p0, p3, p1, p2, Color.green, null, 6f);
            p0 = p3;
        }


        ShowDirections();
    }
    private void DrawSelectedPointInspector()
    {
        
        GUILayout.Label("Selected Point");
        EditorGUI.BeginChangeCheck();       
        
        Vector3 point = EditorGUILayout.Vector3Field("Position", curve.GetControlPoint(selectedIndex));
        float angle = 0;
        if (selectedIndex % 3 == 0)
        {
            angle = EditorGUILayout.Slider("Angle Normal", curve.GetNormalAngle(selectedIndex / 3), -360, 360);
            
        }
        if (EditorGUI.EndChangeCheck())
        {
            EditorUtility.SetDirty(curve);
            curve.SetControlPoint(selectedIndex, point);

            if (selectedIndex % 3 == 0)
            {                
                curve.SetNormalAngle(selectedIndex / 3, angle);

            }
            
        }
        EditorGUI.BeginChangeCheck();
        BezierControlPointMode mode = (BezierControlPointMode)
            EditorGUILayout.EnumPopup("Mode", curve.GetControlPointMode(selectedIndex));
        if (EditorGUI.EndChangeCheck())
        {
            curve.SetControlPointMode(selectedIndex, mode);
            EditorUtility.SetDirty(curve);
        }
    }
    private void ShowDirections()
    {
        Handles.color = Color.green;
        Vector3 point = curve.GetPoint(0f);       
        Handles.DrawLine(point, point);
        int steps = lineSteps * curve.CurveCount;
        Vector3 tangent;
       
        for (int i = 1; i <= steps; i++)
        {
            tangent = curve.GetDirection(i / (float)steps) *.3f;
            Handles.color = Color.green;
            point = curve.GetPoint(i / (float)steps);            
            Handles.DrawLine(point, point + tangent);
            Handles.color = Color.blue;

            Vector3 n = curve.CalculateNormal(tangent, (i - 1) / (float)steps) * .3f;
            n = curve.RotateNormal(i / (float)steps, n);
            Handles.DrawLine(point, point + n);
        }
    }   
    private Vector3 ShowPoint(int index)
    {
        Vector3 point = handleTransform.TransformPoint(curve.GetControlPoint(index));
        Quaternion pointRotation = handleRotation;
        
        float size = HandleUtility.GetHandleSize(point);
        if (index == 0)
        {
            size *= 2f;
        }
        Handles.color = modeColors[(int)curve.GetControlPointMode(index)];
        if (Handles.Button(point, handleRotation, size * handleSize, size * pickSize, Handles.DotHandleCap))
        {
            selectedIndex = index;
            Repaint();
        }
        if (selectedIndex == index)
        {
            EditorGUI.BeginChangeCheck();            
            if(Tools.current == Tool.Rotate && selectedIndex % 3 == 0) 
            {                
                pointRotation = Handles.DoRotationHandle(handleRotation, point); 

            }else { point = Handles.DoPositionHandle(point, handleRotation); }

            if (EditorGUI.EndChangeCheck())
            {
                EditorUtility.SetDirty(curve);               
                curve.SetControlPoint(index, handleTransform.InverseTransformPoint(point));
                
            }
        }
        return point;
    }
}