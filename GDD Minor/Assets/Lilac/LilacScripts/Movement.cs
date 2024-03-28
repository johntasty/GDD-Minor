using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public int upwardForce = 3;
    private Rigidbody rb;
    public int movementZ = 3;
    public int movementX = 3; 

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        this.Move();
    }

    void Move() {
        if(Input.GetKeyDown("space")){
            this.Jump();
        }

        if(Input.GetKey("w")){
            this.MoveForward();
        }

        if(Input.GetKey("s")){
            this.MoveBackward();
        }

        if(Input.GetKey("d")){
            this.MoveRight();
        }

        if(Input.GetKey("a")){ 
            this.MoveLeft();
        }
    }

    void Jump() {
        rb.AddForce(Vector3.up * upwardForce, ForceMode.Impulse);
    }

    void MoveLeft() {
        transform.position += new Vector3 (movementX * -1 * Time.deltaTime, 0,0);
    }

    void MoveRight() {
        transform.position += new Vector3 (movementX * Time.deltaTime, 0,0);
    }

    
    void MoveForward() {
        transform.position += new Vector3 (0, 0, movementZ * Time.deltaTime);
    }
    
    void MoveBackward() {
        transform.position += new Vector3 (0, 0, movementZ * -1 * Time.deltaTime);
    }
}
