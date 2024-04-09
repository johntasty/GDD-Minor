using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting.Antlr3.Runtime;
using UnityEngine;
using UnityEngine.InputSystem;

public class PauseManager : MonoBehaviour
{

    public static PauseManager instance;
    public bool pauseMenuInput { get; private set; }
    [SerializeField]
    GameObject canvasUi;
    //bool paused = false;
    private PlayerInput playerInput;
    private InputAction pauseAction;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
        }

        //playerInput = GetComponent<PlayerInput>();
        //pauseAction = playerInput.actions["Pause"];
    }
    //public void OnPause(InputValue value)
    //{
        
    //    paused = !canvasUi.activeInHierarchy;
    //    canvasUi.SetActive(paused);
    //    pauseMenuInput = paused;
    //    Cursor.visible = paused;
    //}
    
}




