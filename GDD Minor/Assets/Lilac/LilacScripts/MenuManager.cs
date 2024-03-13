using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour
{

    [SerializeField] private GameObject pauseMenu;
    [SerializeField] private string sceneName;

    public bool isPaused;

    private void Start()
    {
        pauseMenu.SetActive(false); 
    }

    private void Update()
    {
        if (PauseManager.instance.pauseMenuInput)
        {
            if(!isPaused)
            {
                Pause();
            }
            else
            {
                Unpause();
            }
        }
    }


    public void Pause()
    {
        isPaused = true;
        Time.timeScale = 0f;
        OpenPauseMenu();
    }

    public void Unpause()
    {
        isPaused = false;
        Time.timeScale = 1f;
        ClosePauseMenu(); 
    }

    private void OpenPauseMenu()
    {
        pauseMenu.SetActive(true);
    }

    private void ClosePauseMenu()
    {
        pauseMenu.SetActive(false);
    }

    public void changeScene()
    {
        SceneManager.LoadScene(sceneName);
    }
}