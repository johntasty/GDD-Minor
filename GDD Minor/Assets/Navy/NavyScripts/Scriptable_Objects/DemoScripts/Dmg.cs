using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dmg : MonoBehaviour
{
    [SerializeField] Reference damage;
    public Reference Damage { get => damage; set => damage = value; }
}
