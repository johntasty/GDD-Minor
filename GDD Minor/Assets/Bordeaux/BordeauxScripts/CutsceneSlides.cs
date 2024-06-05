using System;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace Bordeaux.BordeauxScripts
{
    public class CutsceneSlides : MonoBehaviour
    {
        //Possibly do Loading Screen
        [SerializeField] private Sprite[] slides;
        [SerializeField] private Image introImage;

        private int currentSlide = 0;
        private void Start()
        {
            ChangeSlide(currentSlide);
        }

        // Update is called once per frame
        void Update()
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                currentSlide++;
                if (currentSlide == slides.Length)
                {
                    LoadNextScene();
                }
                else
                {
                    ChangeSlide(currentSlide);
                }
            }
            if (Input.GetKeyDown(KeyCode.Escape))
            {
                LoadNextScene();
            }
        }
        
        void ChangeSlide(int slide)
        {
            introImage.sprite = slides[slide];
            Debug.Log(slide);
        }

        void LoadNextScene()
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }
}
