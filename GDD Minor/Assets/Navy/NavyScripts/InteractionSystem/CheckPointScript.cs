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


public class CheckPointScript : MonoBehaviour {


    [SerializeField] GameObject player;
    [SerializeField] public SerializableDictionary<string, CheckPoint> checkPointDictionary = new SerializableDictionary<string, CheckPoint>();



    // Start is called before the first frame update
    void Start() {

    }

    void Update() {

        if(Input.GetKeyDown(KeyCode.S)) {
            SaveToJson();
        }

        if(Input.GetKeyDown(KeyCode.L)) {
            LoadFromJson();
        }

        if(Input.GetKeyDown(KeyCode.T)) {
            //print dictionary to console
            foreach(KeyValuePair<string, CheckPoint> entry in checkPointDictionary) {
                Debug.Log("Key: "+entry.Key+" Value: "+entry.Value);
            }
        }


    }

    public void OnTriggerEnter(Collider other) {

        if(other.CompareTag("CheckPoint")) {

            CheckPoint checkPoint = new CheckPoint(other.name, other.transform.position);

            if(!checkPointDictionary.ContainsKey(checkPoint.ID)) {

                checkPointDictionary.Add(checkPoint.ID, checkPoint);
                Debug.Log("Added CheckPoint: "+checkPoint.ID);

            }

        }

    }

    public void SaveToJson() {

        string Data = JsonUtility.ToJson(checkPointDictionary);

        string filePath = Application.persistentDataPath+"/CheckPointData.json";
        Debug.Log("Saving to: "+filePath);
        System.IO.File.WriteAllText(filePath, Data);
    }

    public void LoadFromJson() {
        string filePath = Application.persistentDataPath+"/CheckPointData.json";
        string Data = System.IO.File.ReadAllText(filePath);
        checkPointDictionary=JsonUtility.FromJson<SerializableDictionary<string, CheckPoint>>(Data);
        Debug.Log("Loading");


    }

};




