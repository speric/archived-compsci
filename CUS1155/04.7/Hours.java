//CUS 1155 - MWF 10:10-11:05
// eric farkas
// p.43 #4.7

import java.awt.*;
import java.applet.Applet;

public class Hours extends Applet{
	int totalSeconds = 2549;
	int hours = totalSeconds / 3600;
	int minutes = totalSeconds / 60;
	int seconds = totalSeconds;

	public void paint(Graphics g){
		g.drawString("Hours: "+hours,100,100);
		g.drawString("Minutes: "+minutes,100,120);
		g.drawString("Seconds: "+seconds,100,140);
}
}