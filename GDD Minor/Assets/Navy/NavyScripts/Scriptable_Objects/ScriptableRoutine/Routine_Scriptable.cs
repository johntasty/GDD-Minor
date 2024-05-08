using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Routine_Scriptable : ScriptableObject
{
    public abstract IEnumerator CoroutineSeq(MonoBehaviour caller);
}
