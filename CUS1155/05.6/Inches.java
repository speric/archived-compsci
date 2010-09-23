//CUS 1155 - MWF 10:10-11:05
// eric farkas
// p.60 #5.6

import java.awt.*;
import java.applet.Applet;

public class Inches extends Applet {

	public void paint (Graphics g) {
	g.drawString("6.5 centimeters = "+getInches(6.5f)+" inches.",100,100);
	}
	
	private float getInches(float centimeters){
		return centimeters * 0.394f;
		} 
}