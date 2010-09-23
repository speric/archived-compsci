//CUS 1155 MWF 10:10-11:05
// eric farkas
// p.30#3.3

import java.awt.*;
import java.applet.Applet;

public class House extends Applet{

	Font eric = new Font("Tahoma",Font.BOLD, 28);

	public void paint(Graphics g){
		setBackground(Color.blue);
		g.setFont(eric);
		g.setColor(Color.red);
		g.drawString("Eric Farkas",100,25);

		//house		
		g.drawRect(100,100,150,150);
		g.drawLine(100,100,175,50);
		g.drawLine(250,100,175,50);

		//front door
		g.drawRect(150,175,50,75);

		//left window
		g.drawRect(115,175,25,25);

		//right window
		g.drawRect(210,175,25,25);
		
		}
}
	