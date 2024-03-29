using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour
{

    [SerializeField] private GameObject pauseMenu;
    [SerializeField] private string sceneName;

    [SerializeField]
    InputActionAsset actions;

    public bool isPaused = false;

    [SerializeField]
    CinemachineVirtualCamera PlayerVirtualCamera;
   
    private void OnEnable()
    {
        actions.FindAction("Pause").performed += OnPause;
    }
    private void OnDisable()
    {
        actions.FindAction("Pause").performed -= OnPause;
    }
    private void OnPause(InputAction.CallbackContext context)
    {
        isPaused = !pauseMenu.activeInHierarchy;
        Time.timeScale = isPaused ? 0f : 1f;

        Cursor.lockState = isPaused ? CursorLockMode.None: CursorLockMode.Locked;
        Cursor.visible = isPaused;
        pauseMenu.SetActive(isPaused);

        PlayerVirtualCamera.gameObject.SetActive(!isPaused);
    }

    private void Start()
    {
        pauseMenu.SetActive(false);
        
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
        PlayerVirtualCamera.gameObject.SetActive(!isPaused);
        Cursor.visible = isPaused;
        Cursor.lockState = CursorLockMode.Locked;
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

        //DataPersistenceManager.instance.SetLoadSavedGame(false);
        
        SceneManager.LoadScene(sceneName);
    }
    
}