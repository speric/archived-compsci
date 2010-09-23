// eric farkas
// cus 1155 mwf 10:10-11:05

import java.awt.*;
import java.applet.Applet;

public class PieChart extends Applet{
	private int[] pieData = {20, 30, 10, 30, 10};
	
	public void paint(Graphics g){
		drawPieChart(pieData,g);
	}
	
	public void drawPieChart(int[] data, Graphics g){
		int percentOfCircle;
		int startAngle = 0;
		int arcAngle = 0;
		for(int i = 0; i < data.length; i++){
			percentOfCircle = 360 * data[i];
			g.drawArc(100,100,200,200,startAngle,percentOfCircle);
			g.drawLine(100,100,startAngle,percentOfCircle);
			startAngle = percentOfCircle;
		}
	}	
}