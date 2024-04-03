using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    public float speed = 20f;
    public float lifeDuration = 5f;

    void Start()
    {
		StartCoroutine(DestroySelf());
    }

    void Update()
    {
        transform.Translate(Vector3.forward * speed * Time.deltaTime);
    }

    private void OnCollisionEnter(Collision collision)
    {
        // Add what happens on collision (e.g., damage player)
        Destroy(this.gameObject); // Destroy the projectile on collision
    }
	
	private IEnumerator DestroySelf() {
		yield return new WaitForSeconds(2);
		Destroy(gameObject);
	}
} 
