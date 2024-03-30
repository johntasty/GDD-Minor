using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public class Spline_Point : MonoBehaviour
{
    [SerializeField]
    private Vector3 position;

    public Spline_Point(Vector3 position)
    {
        this.Position = position;
    }

    public Vector3 Position { get => position; set => position = value; }
}
