using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public class Projectile : MonoBehaviour
{
    public float speed = 20f;
    private float lifeDuration = 5f;


    void Start()
    {
        Destroy(this.gameObject, lifeDuration);

    }

    void Update()
    {
        transform.Translate(Vector3.forward * speed * Time.deltaTime);
    }

    private void OnCollisionEnter(Collision collision)
    {
        Health.GetComponent<currenHealth>.DecreaseHealth(10);
        
        Destroy(this.gameObject);


        // Add what happens on collision (e.g., damage player) game.Object.tag == player is ook mogelijk....
        //if (other.CompareTag("PlayerCharacter"){ 
        //    Health playerHealth = other.GetComponenten<currentHealth>();
        //    playearHealth.health.DecreaseHealth(10);
        //if (bounch < 1){
        //    Destroy(this.gameObject);
        //}
        //else{
        //    bounch =-1;
        //}
         // Destroy the projectile on collision
    }
}	
//	private IEnumerator DestroySelf() {
//		yield return new WaitForSeconds(2);
//		Destroy(gameObject);
//	}
 
