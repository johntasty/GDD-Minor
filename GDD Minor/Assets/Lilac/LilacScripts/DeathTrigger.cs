using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;

public class DeathTrigger : MonoBehaviour
{
    public GameOver gameOverScreen;
    // Start is called before the first frame update
    void Start()
    {

    }

    public void Die()
    {
        gameOverScreen.GameOver();
    }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
