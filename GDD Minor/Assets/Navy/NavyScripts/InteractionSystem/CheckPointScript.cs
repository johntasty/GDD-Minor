using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPointScript : MonoBehaviour
{

    [SerializeField] GameObject player;

    [SerializeField] List<GameObject> checkPoints;

    [SerializeField] Vector3 vectorPoint;
  
    // Start is called before the first frame update
    void Start()
    {
        
    }

    void Update() {
        //if dead set player position here?
    }

    public void OnTriggerEnter(Collider other) {

        //log the number of the checkpoint
        Debug.Log("Checkpoint: " + checkPoints.IndexOf(other.gameObject));
       
        vectorPoint=player.transform.position;

        Debug.Log("Position: " + vectorPoint);

        Destroy(other.gameObject);
    }

}


