using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DeathButtonManager : MonoBehaviour
{

    private Button restartButton;
    private MenuManager menuManager;

    // Start is called before the first frame update
    void Start()
    {
        restartButton = GameObject.Find("RestartGame")?.GetComponent<Button>();
        restartButton.onClick.AddListener(RestartGame);
        menuManager = FindObjectOfType<MenuManager>();
    }

    private void RestartGame()
    {
        DataPersistenceManager.instance.LoadGame();
        menuManager?.RemoveDeathMenu();
    }
}
