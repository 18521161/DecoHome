using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class Rotate : MonoBehaviour, IEventSystemHandler
{
    [SerializeField]
    Vector3 rotateAmount;
    // Start is called before the first frame update
    void Start()
    {
        rotateAmount = new Vector3(0, 0, 1);
    }

    // Update is called once per frame
    void Update()
    {
        gameObject.transform.Rotate(rotateAmount * Time.deltaTime * 10);

        for (int i = 0; i < Input.touchCount; i++){
            if(Input.GetTouch(i).phase.Equals(TouchPhase.Began)){
                var hit = new RaycastHit();
                Ray ray = Camera.main.ScreenPointToRay(Input.GetTouch(i).position);
                if(Physics.Raycast(ray, out hit)){

                }
            }
        }
    }

    public void SetRotationSpeech(string message){
        float value = float.Parse(message);
        rotateAmount = new Vector3(0, value, 0);
    }
}
