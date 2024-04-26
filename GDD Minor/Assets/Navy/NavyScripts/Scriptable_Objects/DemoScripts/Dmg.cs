using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dmg : MonoBehaviour
{
    [SerializeField] ReferenceFloat damage;
    public ReferenceFloat Damage { get => damage; set => damage = value; }
}
