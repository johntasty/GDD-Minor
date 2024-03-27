using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using UnityEngine.SceneManagement;

public class DataPersistenceManager : MonoBehaviour
{

    [SerializeField] private string fileName;

    public static DataPersistenceManager instance { get; private set; }
    public GameData gameData;

    private FileDataHandler dataHandler;
    private List<IDataPersistence> dataPersistenceObjects;
    private bool loadSavedGame = false;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
            return;
        }

        this.dataHandler = new FileDataHandler(Application.persistentDataPath, fileName);
        this.dataPersistenceObjects = FindAllDataPersistenceObjects();
    }

    private void Start()
    {
        if (loadSavedGame)
        {
            LoadGame();
        }
        else
        {
            NewGame();
        }

    }

    public void NewGame()
    {
        this.gameData = new GameData();

        
        //ApplyGameData();
    }

    public void LoadGame()
    {
        this.gameData = dataHandler.Load();

        if(this.gameData == null)
        {
            NewGame();
        }
        else
        {
            Debug.Log("Game data loaded.");
            ApplyGameData();
        }

        
        
    }

    public void SaveGame()
    {
        foreach (IDataPersistence dataPersistenceObj in dataPersistenceObjects)
        {
            dataPersistenceObj.SaveData(ref gameData);
        }
        dataHandler.Save(gameData);
        ApplyGameData();
    }

    public void SetLoadSavedGame(bool value)
    {
        loadSavedGame = value;
        
    }

    private void ApplyGameData()
    {
        foreach (IDataPersistence dataPersistenceObj in dataPersistenceObjects)
        {
            dataPersistenceObj.LoadData(gameData);
        }
    }

    private List<IDataPersistence> FindAllDataPersistenceObjects()
    {
        IEnumerable<IDataPersistence> dataPersistenceObjects = FindObjectsOfType<MonoBehaviour>().OfType<IDataPersistence>();

        return new List<IDataPersistence>(dataPersistenceObjects);
    }

    private void OnEnable()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnDisable()
    {
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        if (loadSavedGame && scene.name == "Svetlin-testing-safe-game")
        {
            LoadGame();
        }
        
    }

    private void OnApplicationQuit()
    {
        SaveGame();
    }
}
