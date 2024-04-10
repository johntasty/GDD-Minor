using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public class Spline_Path
{
    [SerializeField]
    private List<Vector3> points;
    [SerializeField]
    private List<Vector3> normals;
    [SerializeField]
    private List<Vector3> tangents;

    public Spline_Path()
    {
        this.Points = new List<Vector3>();
        this.Normals = new List<Vector3>();
        this.Tangents = new List<Vector3>();       
    }

    public Spline_Path(List<Vector3> points, List<Vector3> tangents, List<Vector3> normals, List<float> angles)
    {
        this.Points = points;
        this.Normals = normals;
        this.Tangents = tangents;     
    }

    public List<Vector3> Points { get => points; set => points = value; }
    public List<Vector3> Normals { get => normals; set => normals = value; }
    public List<Vector3> Tangents { get => tangents; set => tangents = value; }
   
    public void Reset()
    {
        Points.Clear();
        Normals.Clear();
        Tangents.Clear();    
    }
 
}