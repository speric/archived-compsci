//CUS 1155 - MWF 10:10-11:05
// eric farkas
// p 43# 4.2

import java.awt.*;
import java.applet.Applet;

public class circleCalc extends Applet{
	final float PI = (float)Math.PI;
	float radius = 7.5f;
	
	public void paint(Graphics g){
		g.drawString("The radius of the circle is: "+radius,100,100);
		g.drawString("Circumference: "+getCircumference(radius),100,120);
		g.drawString("Area: "+getArea(radius),100,140);
		g.drawString("Volume: "+getVolume(radius),100,160);
		}

	private float getCircumference(float theRadius){
		return 2.0f*PI*theRadius;
		}
	
	private float getArea(float theRadius){
		return PI*(theRadius*theRadius);
		}
	
	private float getVolume(float theRadius){
		return (4.0f*PI*(theRadius*theRadius*theRadius))/3;
		}
}
	

