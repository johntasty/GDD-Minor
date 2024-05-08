using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    
    public string sceneName;

    public void LoadGameScene()
    {
        
        SceneManager.LoadSceneAsync(sceneName);
        
    }

    public void NewGame()
    {
        DataPersistenceManager.instance.NewGame();
        SceneManager.LoadSceneAsync(sceneName);
    }
}
