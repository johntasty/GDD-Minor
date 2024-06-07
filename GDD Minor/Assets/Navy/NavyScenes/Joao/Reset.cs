using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneRestarter : MonoBehaviour {
    [MenuItem("Helpers/Restart Scene %Q")] // Use %R for shortcut key (Ctrl+R)
    public static void RestartScene() {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
}
