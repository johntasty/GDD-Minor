using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IObjectInteractable
{
    void Interact();

    void Hover();
    void UnHover();
    bool IsObjectHovered();
}
