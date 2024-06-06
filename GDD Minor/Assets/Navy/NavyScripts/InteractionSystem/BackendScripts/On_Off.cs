using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class On_Off : MonoBehaviour
{   
    public void OnOff(MonoBehaviour obj)
    {
        obj.enabled = !obj.isActiveAndEnabled;
    }
    public void OnOffObject(GameObject go)
    {
        bool active = go.activeInHierarchy;
        go.SetActive(!active);
    }
    public void CursorOn_Off(GameObject go)
    {
        bool cursorVisible = go.activeInHierarchy;
        Time.timeScale = cursorVisible ? 0f : 1f;
        Cursor.lockState = cursorVisible ? CursorLockMode.None : CursorLockMode.Locked;
        Cursor.visible = cursorVisible;
    }
    public void ChangeScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }
    public void QuitGame()
    {
        Application.Quit();
    }
}
