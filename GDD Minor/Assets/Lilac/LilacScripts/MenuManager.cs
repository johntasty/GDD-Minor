using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class MenuManager : MonoBehaviour
{

    [SerializeField] private GameObject mainMenu;

    public bool isPaused;

    private void Start()
    {
        mainMenu.SetActive(false); 
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
        OpenMainMenu();
    }

    public void Unpause()
    {
        isPaused = false;
        Time.timeScale = 1f;
        CloseMainMenu(); 
    }

    private void OpenMainMenu()
    {
        mainMenu.SetActive(true);
    }
    private void CloseMainMenu()
    {
        mainMenu.SetActive(false);
    }
}