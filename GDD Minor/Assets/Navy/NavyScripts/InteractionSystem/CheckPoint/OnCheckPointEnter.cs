using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnCheckPointEnter : MonoBehaviour
{
    public void OnTriggerEnter(Collider other) {
        if(other.CompareTag("Player"))

            CheckPointManager.Instance.LogCheckPoint(this.name, this.transform.position);
        }

};

