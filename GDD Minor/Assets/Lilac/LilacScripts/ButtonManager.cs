using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ButtonManager : MonoBehaviour
{
    private Button saveButton;
    private Button loadButton;

    private void Start()
    {
        // Find the Save Game and Load Game buttons in the scene
        saveButton = GameObject.Find("SaveGame")?.GetComponent<Button>();
        loadButton = GameObject.Find("LoadGame")?.GetComponent<Button>();

        // Add onClick listeners to the buttons
        saveButton.onClick.AddListener(SaveGame);
        loadButton.onClick.AddListener(LoadGame);

        if (saveButton != null)
        {
            saveButton.onClick.AddListener(SaveGame);
        }

        if (loadButton != null)
        {
            loadButton.onClick.AddListener(LoadGame);
        }
    }

    private void SaveGame()
    {
        // Call the SaveGame function of the GameManager
        DataPersistenceManager.instance.SaveGame();
    }

    private void LoadGame()
    {
        // Call the LoadGame function of the GameManager
        DataPersistenceManager.instance.LoadGame();
    }
}

