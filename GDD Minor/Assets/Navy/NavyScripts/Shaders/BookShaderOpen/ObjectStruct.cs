using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectStruct : MonoBehaviour
{
    [SerializeField] bool animateOnStart = false;
    [SerializeField] float speed;
    [SerializeField] float strideSpeed;
    [SerializeField]Renderer render;
    [SerializeField] MaterialPropertyBlockVar property;
    public float Speed { get => speed; set => speed = value; }
    public float StrideSpeed { get => strideSpeed; set => strideSpeed = value; }
    public Renderer Render { get => render; set => render = value; }


    private void OnEnable()
    {
        property.Set();
        float speedStart = 0, strideStart = 0;

        if (animateOnStart) speedStart = Speed; strideStart = StrideSpeed;
        property.propertyBlock.SetFloat("_WaveSpeed", speedStart);
        property.propertyBlock.SetFloat("_StrideSpeed", strideStart);
        Render.SetPropertyBlock(property.propertyBlock);
    }
    public void BeginAnimation()
    {
        property.propertyBlock.SetFloat("_WaveSpeed", Speed);
        property.propertyBlock.SetFloat("_StrideSpeed", StrideSpeed);
        Render.SetPropertyBlock(property.propertyBlock);
    }
    public void StopAnimation()
    {
        property.propertyBlock.SetFloat("_WaveSpeed", 0);
        property.propertyBlock.SetFloat("_StrideSpeed", 0);
        Render.SetPropertyBlock(property.propertyBlock);
    }
}
