using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class On_Off : MonoBehaviour
{
    [SerializeField] MonoBehaviour obj;
    public void OnOff()
    {
        obj.enabled = !obj.isActiveAndEnabled;
    }
}
