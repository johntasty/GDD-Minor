using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class bot : MonoBehaviour
{
    NavMeshAgent agent;
	public GameObject target;
	// Start is called before the first frame update
    void Start()
    {
        agent = this.GetComponent<NavMeshAgent>();
    }
	void Seek(Vector3 location)
	{
	agent.SetDestination(location);
	}
    // Update is called once per frame
    void Update()
    {
        Seek(target.transform.position);
    }
}
