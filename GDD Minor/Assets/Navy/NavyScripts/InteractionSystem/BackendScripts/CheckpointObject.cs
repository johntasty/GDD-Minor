using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckpointObject : MonoBehaviour
{
    [Header("Please set this value!")]
    [SerializeField]
    [Min(0)]
    int checkpointId = 0;

    [Header("Do not modify the values below")]
    [SerializeField]
    GameObject shortcut;
    [SerializeField]
    BoxCollider triggerArea;

    private void Start()
    {
        SetCheckpointActive(false);
    }

    public void OnCheckpointTriggered(Collider other)
    {
        // TODO: Save data - add when that no longer relies on a direct reference to player
        // This includes player position and checkpoints reached

        SetCheckpointActive(true);
    }

    /// <summary>
    /// Will set the checkpoint to a state. Will not trigger saving of date when called.
    /// If you're iterating over checkpoints (i.e. when loading a level) and to initiate checkpoints based on a save,
    /// consider using SetCheckpointConditionally() instead.
    /// </summary>
    /// <param name="active">True means the player has reached this checkpoint.</param>
    public void SetCheckpointActive(bool active)
    {
        triggerArea.enabled = !active;
        shortcut.SetActive(active);
    }

    /// <summary>
    /// Uses the maximumCheckpointId to determine if this checkpoint needs to be enabled or not.
    /// If the maximumCheckpointId is higher or the same as this checkpoint's ID, it will become enabled.
    /// Enabled means the player has reached this checkpoint.
    /// </summary>
    /// <param name="maximumCheckpointId"></param>
    public void SetCheckpointConditionally(int maximumCheckpointId)
    {
        if (maximumCheckpointId >= checkpointId)
            SetCheckpointActive(true);
    }
}
