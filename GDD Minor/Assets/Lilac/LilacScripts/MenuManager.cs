using Cinemachine;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;
using static UnityEditor.Experimental.GraphView.GraphView;

public class MenuManager : MonoBehaviour
{
    [SerializeField] private GameObject pauseMenu;
    [SerializeField] private GameObject settingsMenu;
    [SerializeField] private GameObject DeathScreen;
    [SerializeField] private string sceneName;
    [SerializeField] private CinemachineVirtualCamera PlayerVirtualCamera;
    [SerializeField] private InputActionAsset actions;

    public bool isDead = false;

    public bool isPaused = false;
    public bool settingsOpen = false;

    private GameObject _Player;
    private void OnEnable()
    {
        actions.FindAction("Pause").performed += OnPause;
        
    }

    private void OnDisable()
    {
        actions.FindAction("Pause").performed -= OnPause;
    }

    void Start()
    {                
        _Player = GameObject.FindGameObjectWithTag("Player");
        
        pauseMenu.SetActive(true);
        PlayerVirtualCamera = _Player.GetComponentInChildren<CinemachineVirtualCamera>();
    }

    void Update()
    {
        if(isDead == true)
        {
            DeathMenu();
        }
    }

    private void OnPause(InputAction.CallbackContext context)
    {
        if (!isPaused)
        {
            settingsOpen = false;
            Pause();
        }
        else
        {
            Unpause();
        }
    }

    private void Pause()
    {
        isPaused = true;
        Time.timeScale = 0f;

        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        pauseMenu.SetActive(true);
        _Player.GetComponent<PlayerController>().enabled = false;
        PlayerVirtualCamera.gameObject.SetActive(false);
    }

    private void Unpause()
    {
        isPaused = false;
        Time.timeScale = 1f;

        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        pauseMenu.SetActive(false);
        settingsMenu.SetActive(false);
        _Player.GetComponent<PlayerController>().enabled = true;
        PlayerVirtualCamera.gameObject.SetActive(true);
    }

    public void SettingsMenu()
    {
        settingsOpen = !settingsOpen;
        settingsMenu.SetActive(settingsOpen);

        if (settingsOpen)
        {
            isPaused = true; 
        }
    }

    public void CloseSettingsMenu()
    {
        settingsOpen = false;
        settingsMenu.SetActive(false);
    }

    public void ChangeScene()
    {
        SceneManager.LoadScene(sceneName);
    }


    public void DeathMenu()
    {
        isPaused = false;
        DeathScreen.SetActive(true);
        Time.timeScale = 0f;

        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        PlayerVirtualCamera.gameObject.SetActive(false);
        pauseMenu.SetActive(false);
        settingsMenu.SetActive(false);
    }

    public void RemoveDeathMenu()
    {
        isDead = false;
        isPaused = false;
        DeathScreen.SetActive(false);
        Time.timeScale = 1f;

        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        PlayerVirtualCamera.gameObject.SetActive(true);
        pauseMenu.SetActive(false);
        settingsMenu.SetActive(false);
    }
}
