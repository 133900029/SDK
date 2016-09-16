using UnityEngine;
using System.Collections;
using System.Runtime.InteropServices;



public class SDKTransfer : MonoBehaviour {


	[DllImport("__Internal")]
	public static extern void Pay(int money, string extra);

	public void Pay(int money)
	{
		Pay (money, "customInfo");
	}


	void OnGUI()
	{
		if(GUI.Button(new Rect(100,100,100,100),"Pay"))
		{
			Pay(100);
		}

	}


	public void OnMessage(string msg)
	{
		Debug.Log ("GetFromXcode:" + msg);
	}
		
}
	