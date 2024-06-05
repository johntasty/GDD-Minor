using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using static Cinemachine.DocumentationSortingAttribute;

public class VolumeControll : MonoBehaviour
{
    [SerializeField]AudioMixer audioMixer;
    [SerializeField] FloatValue MasterSound;
    [SerializeField] FloatValue MusicSound;
    [SerializeField] FloatValue SFXSound;

    private void Start()
    {        
        audioMixer.SetFloat("MasterVolume", MasterSound.FloatVariable);
        audioMixer.SetFloat("MusicVolume", MusicSound.FloatVariable);
        audioMixer.SetFloat("SFXVolume", SFXSound.FloatVariable);
    }
    public void MasterVolume(float level)
    {
        audioMixer.SetFloat("MasterVolume", level);
        MasterSound.Set(level);
    }
    public void MusicVolume(float level)
    {
        audioMixer.SetFloat("MusicVolume", level);
        MusicSound.Set(level);
    }
    public void SFXVolume(float level)
    {
        audioMixer.SetFloat("SFXVolume", level);
        SFXSound.Set(level);
    }
    
}
