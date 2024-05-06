using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]

public class GameData
{

    public Vector3 playerPosition;

    // the values in this constructor are the default values when there is no data to load
    public GameData()
    {
        playerPosition = Vector3.zero;
    }

}
