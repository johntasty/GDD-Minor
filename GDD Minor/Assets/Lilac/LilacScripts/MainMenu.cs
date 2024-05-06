using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
   
    public void LoadGameScene()
    {
        
        SceneManager.LoadSceneAsync("Svetlin-testing-fixed-safe");
        
    }

    public void NewGame()
    {
        DataPersistenceManager.instance.NewGame();
        SceneManager.LoadSceneAsync("Svetlin-testing-fixed-safe");
    }
}
