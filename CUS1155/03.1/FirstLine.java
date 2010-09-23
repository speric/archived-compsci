//CUS 1155 - MWF 10:10-11:05
// eric farkas
// p.30#3.1

import java.awt.*; 
import java.applet.Applet; 

public class FirstLine extends Applet{ 
	public void paint(Graphics g){ 
		g.drawLine(50,100,50,150); 
		g.drawLine(50,150,100,150); 
		g.drawLine(100,150,50,100); 
	} 
} 

