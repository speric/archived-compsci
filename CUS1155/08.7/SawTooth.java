import java.awt.*;
import java.applet.Applet;

public class SawTooth extends Applet{
	private String toothPattern = "s";
	private int y = 100;

	public void paint(Graphics g){
		for(int j = 0; j <= 3; j++){
		for(int i = 0; i <= 5; i++){
			g.drawString(""+toothPattern,100,y);
			y+=20;
			toothPattern+="s";
			}
		toothPattern = "s";
	}
}
}
		
