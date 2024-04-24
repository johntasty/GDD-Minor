using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RopeNode
{
    private Vector3 _position, _oldPosition;

    public Vector3 OldPosition { get => _oldPosition; set => _oldPosition = value; }
    public Vector3 Position { get => _position; set => _position = value; }
    public Vector3 Velocity { get { return (_position - _oldPosition); }}

    void UpdatePositions(Vector3 position)
    {
        _oldPosition = _position;
        _position = position;
    }
    public RopeNode(Vector3 newPosition)
    {
        _oldPosition = _position = newPosition;
    }

    public void UpdateNode(Vector3 gravity) 
    { 
        Vector3 curVelocity = this.Velocity;        
        Vector3 newPos = this.Position + curVelocity;
        newPos += gravity * Time.fixedDeltaTime;
        this.UpdatePositions(newPos);
             
    }
   
}
