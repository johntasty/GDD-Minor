using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
   
    public string gameSceneName = "Svetlin-testing-safe-game";

    
    public DataPersistenceManager dataPersistenceManager;

    public void LoadGameScene()
    {
        
        dataPersistenceManager.SetLoadSavedGame(true);

        
        SceneManager.LoadScene(gameSceneName);
        
    }

    public void NewGame()
    {
        
        dataPersistenceManager.NewGame();

        SceneManager.LoadScene(gameSceneName);
        
    }
}
