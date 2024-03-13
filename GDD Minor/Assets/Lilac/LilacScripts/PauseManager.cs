using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PauseManager : MonoBehaviour
{

    public static PauseManager instance;
    public bool pauseMenuInput { get; private set; }


    private PlayerInput playerInput;
    private InputAction pauseAction;
    
    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
        }
        
        playerInput = GetComponent<PlayerInput>();
        pauseAction = playerInput.actions["Pause"];
    }

    private void Update()
    {
        pauseMenuInput =pauseAction.WasPressedThisFrame();
    }
}




