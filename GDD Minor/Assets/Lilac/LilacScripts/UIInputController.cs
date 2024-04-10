using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.Controls;
using UnityEngine.UI;
using TMPro;
using System.Collections;

public class UIInputController : MonoBehaviour
{
    public InputActionReference jumpActionReference;
    public TextMeshProUGUI jumpKeyNameText;
    public Button jumpChangeButton;

    private void Start()
    {
        // Get the current binding display name
        jumpKeyNameText.text = GetBindingDisplayName(jumpActionReference);
        
        // Listen for clicks on the change button
        jumpChangeButton.onClick.AddListener(ChangeJumpBinding);
    }

    private string GetBindingDisplayName(InputActionReference actionReference)
    {
        // Get the current display name for the binding
        foreach (InputBinding binding in actionReference.action.bindings)
        {
            if (binding.isPartOfComposite)
            {
                continue;
            }
            return binding.interactions.ToString();
        }
        return "None";
    }

    public void ChangeJumpBinding()
    {
        // Prompt the user to press a new key
        StartCoroutine(GetNewBinding(jumpActionReference, jumpKeyNameText));
    }

    private IEnumerator GetNewBinding(InputActionReference actionReference, TextMeshProUGUI displayText)
    {
        displayText.text = "Press a key...";

        // Disable the action while rebinding
        actionReference.action.Disable();

        // Wait for a new input
        InputControl control = null;
        while (control == null)
        {
            foreach (InputDevice device in InputSystem.devices)
            {
                control = GetControlWithBinding(device, actionReference);
                if (control != null) break;
            }
            yield return null;
        }

        // Rebind the action
        actionReference.action.ApplyBindingOverride(0, control.path);

        // Update the display
        displayText.text = GetBindingDisplayName(actionReference);

        // Enable the action again
        actionReference.action.Enable();
    }

    private InputControl GetControlWithBinding(InputDevice device, InputActionReference actionReference)
    {
        foreach (InputControl control in device.allControls)
        {
            if (control.IsPressed())
            {
                return control;
            }
        }
        return null;
    }
}