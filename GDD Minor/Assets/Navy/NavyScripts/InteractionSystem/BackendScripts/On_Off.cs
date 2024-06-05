using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class On_Off : MonoBehaviour
{
    public void OnOff(MonoBehaviour obj)
    {
        obj.enabled = !obj.isActiveAndEnabled;
    }
    public void OnOffObject(GameObject go)
    {
        bool active = go.activeInHierarchy;
        go.SetActive(!active);
    }
    public void CursorOn_Off()
    {
        Cursor.lockState = Cursor.visible ? CursorLockMode.None : CursorLockMode.Locked;
        Cursor.visible = !Cursor.visible;
    }
}
