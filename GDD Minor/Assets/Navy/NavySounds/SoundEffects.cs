using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class SoundEffects : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField]AudioSource SFXAudioSource;
    [SerializeField]AudioSource MusicAudioSource;
    [SerializeField]UnityEvent startUpEvent;
    private void Start()
    {
        startUpEvent.Invoke();
    }

    public void PlaySound(AudioClip audioData)
    {
        SFXAudioSource.clip = audioData;
        SFXAudioSource.Play();
    }
    public void PlayMusic(AudioClip audioData)
    {
        MusicAudioSource.clip = audioData;
        MusicAudioSource.Play();
    }
}
