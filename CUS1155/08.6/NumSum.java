import java.awt.*;
import java.applet.Applet;

public class NumSum extends Applet{
private int sum = 0;
	public void paint(Graphics g){
		for(int i = 0; i <= 39; i++)
			sum+=i;
		g.drawString(""+sum,100,100); // expect 780
	}
}
			
		
		