using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public struct CheckPoint {
    public string ID;
    public Vector3 position;

    public CheckPoint(string id, Vector3 pos) {
        ID=id;
        position=pos;
    }
}

[System.Serializable]
public class SerializableDictionary<TKey, TValue> : Dictionary<TKey, TValue>, ISerializationCallbackReceiver {
    [SerializeField]
    private List<TKey> keys = new List<TKey>();

    [SerializeField]
    private List<TValue> values = new List<TValue>();

    // save the dictionary to lists
    public void OnBeforeSerialize() {
        keys.Clear();
        values.Clear();
        foreach(KeyValuePair<TKey, TValue> pair in this) {
            keys.Add(pair.Key);
            values.Add(pair.Value);
        }
    }

    // load dictionary from lists
    public void OnAfterDeserialize() {
        this.Clear();

        if(keys.Count!=values.Count)
            throw new System.Exception(string.Format("there are {0} keys and {1} values after deserialization. Make sure that both key and value types are serializable."));

        for(int i = 0; i<keys.Count; i++)
            this.Add(keys[i], values[i]); 
    }

};


public class CheckPointManager : MonoBehaviour {

    public static CheckPointManager Instance { get; private set; }


    [SerializeField] GameObject player;
    [SerializeField] public SerializableDictionary<string, CheckPoint> checkPointDictionary = new SerializableDictionary<string, CheckPoint>();


    private void Awake() {
        if(Instance==null) {
            Instance=this;
        }
        else {
            Destroy(gameObject); 
            return;
        }
    }

    // Start is called before the first frame update
    void Start() {
        LoadFromJson();
    }

    public void LogCheckPoint(GameObject gameObject) {
        string name = gameObject.name;
        Vector3 position = gameObject.transform.position;
        CheckPoint checkPoint = new CheckPoint(name, position);
        if(!checkPointDictionary.ContainsKey(checkPoint.ID)) {

            checkPointDictionary.Add(checkPoint.ID, checkPoint);
            SaveToJson();

        }

    }

    public void SaveToJson() {

        string Data = JsonUtility.ToJson(checkPointDictionary);

        string filePath = Application.persistentDataPath+"/CheckPointData.json";
        System.IO.File.WriteAllText(filePath, Data);
    }

    public void LoadFromJson() {
        string filePath = Application.persistentDataPath+"/CheckPointData.json";
        string Data = System.IO.File.ReadAllText(filePath);
        checkPointDictionary=JsonUtility.FromJson<SerializableDictionary<string, CheckPoint>>(Data);


    }

};




