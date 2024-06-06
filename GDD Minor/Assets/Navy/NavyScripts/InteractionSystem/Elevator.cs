using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Windows;

public class Elevator : MonoBehaviour
{
    [SerializeField] ObjectSetRuntime floors;
    [SerializeField] float duration;

    ProcedurallyAnimatableObject elevator;
    [SerializeField]List<GameObject> elevatorsButtons = new List<GameObject>();
    Vector3 startPosition;
    // Start is called before the first frame update
    void Start()
    {
        elevator = GetComponent<ProcedurallyAnimatableObject>();
        elevator.durationSeconds = duration;
        startPosition = transform.position;
        
    }
    public void Checking(object caller)
    {
        int temp = (int)caller;
        int durationExtra = temp != 0 ? temp - 1 : temp;

        if (elevator.IsMoving) { return; }
        elevator.durationSeconds = duration + (durationExtra * duration);
        elevator.targetPosition = startPosition + new Vector3(0, 7 * temp, 0);        
        elevator.StartAnimation();
        
    }
    public void EnableButton(object caller)
    {
        int temp = (int)caller;
        elevatorsButtons[temp].SetActive(true);
        
    }
    public void ResetElevator()
    {       
        elevator.durationSeconds = duration;
        elevator.targetPosition = startPosition;
        StartCoroutine(WaitAndReset());

    }
    IEnumerator WaitAndReset()
    {
        yield return new WaitForSeconds(1f);
        elevator.StartAnimation();
    }
 
}
