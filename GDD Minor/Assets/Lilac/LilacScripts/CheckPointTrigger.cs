using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPointTrigger : MonoBehaviour
{
    public GameObject playerObject; // Assign the player GameObject in the Inspector

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject == playerObject)
        {
            PlayerController playerController = playerObject.GetComponent<PlayerController>();

            if (playerController != null)
            {
                playerController.SaveData(ref DataPersistenceManager.instance.gameData);
                DataPersistenceManager.instance.SaveGame();
                Destroy(gameObject);
            }
            else
            {
                Debug.LogWarning("PlayerController component not found on playerObject.");
            }
        }
    }
}