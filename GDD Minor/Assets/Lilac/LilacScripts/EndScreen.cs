using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndScreen : MonoBehaviour
{
    public GameObject panel; 

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player")) 
        {
            if (panel != null)
            {
                panel.SetActive(true);
                Time.timeScale = 0f;

                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
            }
        }
    }
}
