import java.awt.*;
import java.applet.Applet;

public class TheWall extends Applet{
	int x1 = 20, y1 = 20;
	int x2 = 25, y2 = 30;
	
	public void paint(Graphics g){
	for(int j = 0; j <= 5; j++){
		for(int i = 0; i <= 5; i++){
			g.drawRect(x1,y1,20,10);
			g.drawRect(x2,y2,20,10);
			x1+=10;
			x2+=10;
		}
		x1=20;
		x2=25;
		y1+=20;
		y2+=20;
	}
	}
}
		