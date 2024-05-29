using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Destruction : MonoBehaviour
{

    [SerializeField] private Transform destroyedObject;

    public void DestroyObject() {
        Destroy(gameObject);
        Instantiate(destroyedObject, transform.position, transform.rotation);
    }
}
