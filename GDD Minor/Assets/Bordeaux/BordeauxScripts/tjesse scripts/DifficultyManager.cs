using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DifficultyManager : MonoBehaviour
{
    public static DifficultyManager Instance { get; private set; }

    // multipliers for enemy health ,bullet damage and speed
    public float healthMultiplier = 1.0f;
    public float damageMultiplier = 1.0f;
    public float speedMultiplier = 1.0f;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);  // this is for persitence across scenes
        }
        else
        {
            Destroy(gameObject);
        }
    }

    // methods to change the difficulty level
    public void SetDifficulty(int level)
    {
        switch (level)
        {
            case 0: // Easy
                healthMultiplier = 0.75f;
                damageMultiplier = 0.75f;
                speedMultiplier = 0.75f;
                break;
            case 1: // Medium
                healthMultiplier = 1.0f;
                damageMultiplier = 1.0f;
                speedMultiplier = 1.0f;
                break;
            case 2: // Hard
                healthMultiplier = 1.5f;
                damageMultiplier = 1.5f;
                speedMultiplier = 1.5f;
                break;
        }
    }
}
