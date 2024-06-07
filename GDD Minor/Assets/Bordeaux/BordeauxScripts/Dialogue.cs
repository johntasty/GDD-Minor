using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Dialogue : MonoBehaviour
{
    [SerializeField] DialogueItem[] _dialogueItems;

    [SerializeField] private TMP_Text text;

    [SerializeField] private Image characterPortrait;

    [SerializeField] private GameObject linaName;
    [SerializeField] private GameObject youName;
    private int currentDialogue = 0;

    
    // Start is called before the first frame update
    void Start()
    {
        GoNextDialogue();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            currentDialogue++;
            GoNextDialogue();
        }
        
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            LoadNextScene();
        }
    }

    void GoNextDialogue()
    {
        if (currentDialogue == _dialogueItems.Length)
        {
            LoadNextScene();
        }
        text.text = _dialogueItems[currentDialogue].dialogue;
        if (_dialogueItems[currentDialogue].isPlayerSpeaking)
        {
            characterPortrait.gameObject.SetActive(false);
            linaName.SetActive(false);
            youName.SetActive(true);
        }
        else
        {
            characterPortrait.gameObject.SetActive(true);
            linaName.SetActive(true);
            youName.SetActive(false);
        }
    }

    void LoadNextScene()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }
}
[Serializable]
public class DialogueItem
{
    public string dialogue = "You shouldnt see this";
    public bool isPlayerSpeaking = false;
}