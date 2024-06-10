using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnlockDoubleJump : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        // Check if the player has collided with the box
        if (other.CompareTag("Player"))
        {
            // Get the PlayerController component from the player
            PlayerController playerController = other.GetComponent<PlayerController>();
            if (playerController != null)
            {
                // Unlock double jump
                playerController.UnlockDoubleJump();
                // Optionally destroy the unlock object so it can't be used again
                Destroy(gameObject);
            }
        }
    }
}
