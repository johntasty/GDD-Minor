using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ElevatorButtons : MonoBehaviour
{

    [SerializeField] ColliderEventObject eventObject;
    [SerializeField] Animation ButtonAnimation;
    bool activeCur = false;
    public void ElevatorCall(int floor)
    {
        eventObject.RaiseEvent(floor);
    }
    public void UnlockCursor()
    {
        activeCur = !activeCur;

        Cursor.lockState = activeCur ? CursorLockMode.None : CursorLockMode.Locked;
        Cursor.visible = activeCur;

    }

    public void AnimateButton()
    {
        ButtonAnimation.Play();
    }
}
