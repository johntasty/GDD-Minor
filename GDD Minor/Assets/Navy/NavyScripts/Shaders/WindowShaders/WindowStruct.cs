using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindowStruct : MonoBehaviour
{

    [SerializeField] Renderer render;
    [SerializeField] float wall_ref_number;
    [SerializeField] int wall_que;
    [SerializeField] bool glass;

    public Renderer Render { get => render; set => render = value; }

    private void Start()
    {
        render.material.SetFloat("_Ref", wall_ref_number);
        render.material.renderQueue = wall_que;

    }
   
}
