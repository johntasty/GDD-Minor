using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public class Spline_Path : MonoBehaviour
{
    [SerializeField]
    private List<Vector3> scales;
    [SerializeField]
    private List<Vector3> points;
    [SerializeField]
    private List<Vector3> normals;
    [SerializeField]
    private List<Vector3> tangents;
    [SerializeField]
    private List<float> parametersT;

    public Spline_Path()
    {
        this.Points = new List<Vector3>();
        this.Normals = new List<Vector3>();
        this.Tangents = new List<Vector3>();
        this.Scales = new List<Vector3>();
        this.ParametersT = new List<float>();
    }

    public Spline_Path(List<Vector3> points, List<Vector3> tangents, List<Vector3> normals, List<Vector3> scales, List<float> parametersT)
    {
        this.Points = points;
        this.Normals = normals;
        this.Tangents = tangents;
        this.Scales = scales;
        this.ParametersT = parametersT;
    }

    public List<Vector3> Scales { get => scales; set => scales = value; }
    public List<Vector3> Points { get => points; set => points = value; }
    public List<Vector3> Normals { get => normals; set => normals = value; }
    public List<Vector3> Tangents { get => tangents; set => tangents = value; }
    public List<float> ParametersT { get => parametersT; set => parametersT = value; }

    public void Reset()
    {
        Scales.Clear();
        Points.Clear();
        Normals.Clear();
        Tangents.Clear();
        ParametersT.Clear();
    }
}
