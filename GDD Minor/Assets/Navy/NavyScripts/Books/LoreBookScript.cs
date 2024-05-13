using System;
using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using TMPro;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class LoreBookScript : MonoBehaviour
{
    [Header("Customisation Settings")]
    [Tooltip("The font color of the text.")]
    [SerializeField] private Color fontColor = Color.white;
    [Tooltip("The color of the panel behind the text, in case readability needs to be improved.")]
    [SerializeField] private Color pageBackgroundColor;
    [SerializeField] private float fadeInDuration = 1f;
    [SerializeField] private float fadeOutDuration = 1f;
    [TextArea(3, 10)]
    [SerializeField] private List<string> pages;


    [Header("Internal Settings")]
    [SerializeField] private CanvasGroup bookUI;
    [SerializeField] private Button prevPageButton;
    [SerializeField] private Button nextPageButton;

    [SerializeField] private TMP_Text pageContent;
    [SerializeField] private TMP_Text pageContentOverflow;
    [SerializeField] private Image backgroundLeft;
    [SerializeField] private Image backgroundRight;

    private int _currentPage = 0;
    private int _pageCount;
    private Vector2 inOut;
    private void Start()
    {
        _pageCount = pages.Count;

        backgroundLeft.color = pageBackgroundColor;
        backgroundRight.color = pageBackgroundColor;

        pageContent.color = fontColor;
        pageContentOverflow.color = fontColor;
        
        nextPageButton.gameObject.SetActive(_pageCount > 1);
        
        if (_pageCount > 0)
            pageContent.SetText(pages[0]);
        
    }

    public int CurrentPage
    {
        get => _currentPage;
        set
        {
            _currentPage = Math.Clamp(value, 0, _pageCount - 1);
            prevPageButton.gameObject.SetActive(value > 0);
            nextPageButton.gameObject.SetActive(value < _pageCount - 1);
            pageContent.SetText(pages[_currentPage]);
        }
    }
    
    public void ShowBook()
    {
        bookUI.gameObject.SetActive(!bookUI.gameObject.activeInHierarchy);
        bool activeBook = bookUI.gameObject.activeInHierarchy;

        inOut = activeBook ? new Vector2(0f, 1f) : new Vector2(1f, 0f);
        StartCoroutine(FadeCanvasCoroutine(bookUI, inOut.x, inOut.y, fadeInDuration, activeBook));        
        Cursor.lockState = activeBook ? CursorLockMode.None : CursorLockMode.Locked; 
        Cursor.visible = activeBook;

    }

    public void OnPreviousPageClicked()
    {
        CurrentPage -= 1;
    }

    public void OnNextPageClicked()
    {
        CurrentPage += 1;
    }

    public void OnCloseBookClicked()
    {
        StartCoroutine(FadeCanvasCoroutine(bookUI, 1f, 0f, fadeOutDuration, false));        
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;      
    }
    
    IEnumerator FadeCanvasCoroutine(CanvasGroup canvas, float from, float to, float fadeDuration, bool activeAtEnd)
    {
        float elapsedTime = 0f;
        while (elapsedTime < fadeDuration)
        {
            float t = elapsedTime / fadeDuration;
            
            canvas.alpha = Mathf.Lerp(from, to, t);

            elapsedTime += Time.deltaTime;

            yield return null;
        }

        canvas.alpha = to;
        canvas.gameObject.SetActive(activeAtEnd);
        
    }

}
