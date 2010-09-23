import java.awt.*;
import java.applet.Applet;

public class Fib extends Applet{
	private int hi = 1, lo = 1;
	private int xVal = 50;
	
	public void paint(Graphics g){
		g.drawString(""+lo,xVal,100);
		xVal+=35;
		for(int i = 1; i <= 20; i++){
			g.drawString(""+hi,xVal,100);
			xVal+=35;
			hi = hi + lo;
			lo = hi - lo;
		}
	}
}
			