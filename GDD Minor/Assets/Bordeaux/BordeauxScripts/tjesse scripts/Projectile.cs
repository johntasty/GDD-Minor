using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Projectile : MonoBehaviour
{
    public float speed = 20f;
    private float lifeDuration = 5f;

    public float damageAmount = 10f; // Amount of damage of the projectile 
    private float damage;

    void Start()
    {
        Destroy(this.gameObject, lifeDuration);
        damage = damageAmount * DifficultyManager.Instance.damageMultiplier;
       
    }

    void Update()
    {
        transform.Translate(Vector3.forward * speed * Time.deltaTime);
    }

    private void OnCollisionEnter(Collision collision)
    {
        Health health = collision.gameObject.GetComponent<Health>();

        if (health != null)
        {
            // Decrease the health of the player, maybe add a check tag if its hit a enemy or any other game object...
            health.DecreaseHealth(damageAmount);
        }
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
 
