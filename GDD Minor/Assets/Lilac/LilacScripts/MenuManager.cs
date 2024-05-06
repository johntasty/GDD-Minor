using Cinemachine;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour
{
    [SerializeField] private GameObject pauseMenu;
    [SerializeField] private GameObject settingsMenu;
    [SerializeField] private string sceneName;
    [SerializeField] private CinemachineVirtualCamera PlayerVirtualCamera;
    [SerializeField] private InputActionAsset actions;

    public bool isPaused = false;
    public bool settingsOpen = false;

    private void OnEnable()
    {
        actions.FindAction("Pause").performed += OnPause;
    }

    private void OnDisable()
    {
        actions.FindAction("Pause").performed -= OnPause;
    }
    void start()
    {
        pauseMenu.SetActive(false);
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
}
