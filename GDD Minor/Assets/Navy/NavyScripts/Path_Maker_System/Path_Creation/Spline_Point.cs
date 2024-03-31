using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.ProBuilder;

[Serializable]
public class Spline_Point
{
    [SerializeField]
    private List<Vector3> pointsEditor;
    [SerializeField]
    private List<float> angles;

    public List<Vector3> PointsEditor { get => pointsEditor; set => pointsEditor = value; }
    public List<float> Angles { get => angles; set => angles = value; }

    public Spline_Point()
    {
        this.PointsEditor = new List<Vector3>(); 
        this.angles = new List<float>(); 
    }
    public Spline_Point(List<Vector3> pointsEditor, List<float> anglesEditor)
    {
        this.PointsEditor = pointsEditor;
        this.angles = anglesEditor;
    }
    public void Reset()
    {
        PointsEditor.Clear();
        angles.Clear();       
    }
  
}
