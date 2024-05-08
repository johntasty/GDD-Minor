using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "ScriptableObjects/Sequence_Obj", order = 1)]
public class ScriptableObj : Routine_Scriptable
{
    public float WaitTime = 1f;
    public override IEnumerator CoroutineSeq(MonoBehaviour caller)
    {
        yield return new WaitForSeconds(WaitTime);
        Destroy(caller.gameObject);
    }
}
