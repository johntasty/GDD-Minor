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
        gameOverScreen.GameOverScreen();
    }

    // Update is called once per frame
    void Update()
    {

    }
}
