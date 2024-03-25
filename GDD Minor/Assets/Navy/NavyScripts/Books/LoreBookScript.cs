using System;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class LoreBookScript : MonoBehaviour
{
    [SerializeField] private Canvas bookUI;
    [SerializeField] private TMP_Text bookContent;
    [SerializeField] private Button prevPageButton;
    [SerializeField] private Button nextPageButton;

    private int _currentPage = 1;
    private int _pageCount;

    public int CurrentPage
    {
        get => _currentPage;
        set
        {
            prevPageButton.gameObject.SetActive(!(value <= 1));
            nextPageButton.gameObject.SetActive(!(value >= _pageCount));
            _currentPage = Math.Clamp(value, 1, _pageCount);
            bookContent.pageToDisplay = _currentPage;
        }
    }
    
    public void ShowBook()
    {
        
        bookUI.enabled = true;
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        TMP_TextInfo textInfo = bookContent.GetTextInfo(bookContent.text);
        _pageCount = textInfo.pageCount;
        Time.timeScale = 0;
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
        bookUI.enabled = false;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        Time.timeScale = 1;
    }

}
