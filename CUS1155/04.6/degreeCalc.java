//CUS 1155 - MWF 10:10-11:05
// eric farkas
// p 43# 4.6

import java.awt.*;
import java.applet.Applet;

public class degreeCalc extends Applet{
	float farenheit = 97f;
	
	public void paint(Graphics g){
		g.drawString(+farenheit+" deg. Farenheit = "+celsius(farenheit)+" deg. Celsius",100,100);
	}
	

	private float celsius(float fDeg){
		return (fDeg - 32.0f) * 5.0f / 9.0f;
	}
		
}
	

