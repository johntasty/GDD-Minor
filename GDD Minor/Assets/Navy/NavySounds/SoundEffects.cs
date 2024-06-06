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
    bool canPlay = true;
    private void Start()
    {
        startUpEvent.Invoke();
    }

    public void PlaySound(AudioClip audioData)
    {
        if (!canPlay) { return; }
        SFXAudioSource.clip = audioData;
        SFXAudioSource.Play();
    }
    public void PlayMusic(AudioClip audioData)
    {
        MusicAudioSource.clip = audioData;
        MusicAudioSource.Play();
    }
    public void CanPlaySound()
    {
        canPlay = !canPlay;
    }
}
