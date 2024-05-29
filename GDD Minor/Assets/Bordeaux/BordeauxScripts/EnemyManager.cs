using System.Collections;
using TMPro;
using UnityEngine;

namespace Bordeaux.BordeauxScripts
{
    public class EnemyManager : MonoBehaviour
    {
        [SerializeField] private int totalTokens = 10;
        [SerializeField] TMP_Text text;
  
        private int currentTokens;

        private bool canRequest = true;
    
        private void Start()
        {
            currentTokens = totalTokens;
        }

        private void Update()
        {
            // text.text = currentTokens.ToString();
        }

        public bool RequestToken()
        {
            if (currentTokens > 0)
            {
                currentTokens--;
                return true;
            }
            else
            {
                return false;
            }
        }

        private IEnumerator TokenCooldown()
        {
            yield return new WaitForSeconds(0.1f);
            canRequest = true;
        }
    
        public void ReturnToken()
        {
            currentTokens++;
            currentTokens = Mathf.Clamp(currentTokens, 0, totalTokens);
            // Debug.Log(currentTokens);
        }
    
    }
}
