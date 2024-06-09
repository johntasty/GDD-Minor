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
    [SerializeField] private Image characterPortraitEvil;
    [SerializeField] private Image librarianPortrait;

    [SerializeField] private GameObject buttons;
    [SerializeField] private GameObject linaName;
    [SerializeField] private GameObject librarianName;
    [SerializeField] private GameObject youName;

    [SerializeField] private GameObject deadMenu;
    
    private int currentDialogue = 0;

    
    // Start is called before the first frame update
    void Start()
    {
        GoNextDialogue();
        buttons.SetActive(false);
        deadMenu.SetActive(false);
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

        if (_dialogueItems[currentDialogue].isChoice)
        {
            characterPortrait.gameObject.SetActive(false);
            characterPortraitEvil.gameObject.SetActive(false);
            librarianPortrait.gameObject.SetActive(false);
            linaName.SetActive(false);
            youName.SetActive(true);
            librarianName.SetActive(false);
            buttons.SetActive(true);
            text.text = "";
            return;            
        }
        text.text = _dialogueItems[currentDialogue].dialogue;
        if (_dialogueItems[currentDialogue].isPlayerSpeaking)
        {
            characterPortrait.gameObject.SetActive(false);
            characterPortraitEvil.gameObject.SetActive(false);
            librarianPortrait.gameObject.SetActive(false);
            linaName.SetActive(false);
            librarianName.SetActive(false);
            youName.SetActive(true);
        }
        else if (_dialogueItems[currentDialogue].isLibrarianSpeaking)
        {
            characterPortrait.gameObject.SetActive(false);
            librarianName.SetActive(true);
            characterPortraitEvil.gameObject.SetActive(false);
            linaName.SetActive(false);
            youName.SetActive(false);
            librarianPortrait.gameObject.SetActive(true);
        }
        else
        {
            if (_dialogueItems[currentDialogue].isEvil)
            {
                characterPortraitEvil.gameObject.SetActive(true);
                characterPortrait.gameObject.SetActive(false);
            }
            else
            {
                characterPortraitEvil.gameObject.SetActive(false);
                characterPortrait.gameObject.SetActive(true);
            }
            linaName.SetActive(true);
            youName.SetActive(false);
            librarianName.SetActive(false);
        }
    }

    void LoadNextScene()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }


    public void PickOption1()
    {
        deadMenu.SetActive(true);
    }

    public void PickOption2()
    {
        SceneManager.LoadScene(2);
    }
}
[Serializable]
public class DialogueItem
{
    public string dialogue = "You shouldnt see this";
    public bool isPlayerSpeaking = false;
    public bool isLibrarianSpeaking = false;
    public bool isEvil = false;
    [Space] public bool isChoice = false;
}