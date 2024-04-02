using System;
using Cinemachine;
using TMPro;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class LoreBookScript : MonoBehaviour
{
    [SerializeField] private Canvas bookUI;
    [SerializeField] private TMP_Text bookContent;
    [SerializeField] private Button prevPageButton;
    [SerializeField] private Button nextPageButton;
    [SerializeField] private InputActionAsset inputManager;

    private CinemachineVirtualCamera _playerCamera;
    private int _currentPage = 1;
    private int _pageCount;

    private void Start()
    {
        var activeCam = CinemachineCore.Instance.GetActiveBrain(0).ActiveVirtualCamera;
        _playerCamera = (CinemachineVirtualCamera) activeCam;
    }

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

        if (_pageCount == 1)
        {
            prevPageButton.gameObject.SetActive(false);
            nextPageButton.gameObject.SetActive(false);
        }

        inputManager.Disable();
        _playerCamera.gameObject.SetActive(false);
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
        
        inputManager.Enable();
        _playerCamera.gameObject.SetActive(true);

    }

}
