//CUS 1155 - MWF 10:10-11:05
// eric farkas
// p.60 #5.4

import java.awt.*;
import java.applet.Applet;

public class StickFigure extends Applet {

	public void paint (Graphics g) {
	drawPerson(g,100,200,200);
	}
	
	private void drawPerson(Graphics g, int height, int baseX, int baseY){
	int limbLength = height / 2;
	int headDiameter = height / 2;
	
	//head
	g.drawOval(baseX-(headDiameter/2),((baseY-height)-headDiameter),headDiameter,headDiameter);

	//body
	g.drawLine(baseX,baseY,baseX,baseY-height);

	//left arm
	g.drawLine(baseX,(baseY-height)+(height/2),baseX-limbLength,(baseY-height)+(height/2));

	//right arm
	g.drawLine(baseX,(baseY-height)+(height/2),baseX+limbLength,(baseY-height)+(height/2));

	//left leg
	g.drawLine(baseX,baseY,baseX-limbLength,baseY+limbLength);

	//right leg
	g.drawLine(baseX,baseY,baseX+limbLength,baseY+limbLength);
	} 
}