// eric farkas
// cus 1155 mwf 10:10-11:05

import java.awt.*;
import java.applet.Applet;

public class BarChart extends Applet{
	private int[] chartData = {12, 6, 9, 14, 18, 13};
	
	int yStart = 20, yHeight = 200, xStart = 20, width = 30, gap = 10;
	
	public void paint(Graphics g){
		int x = xStart;
		g.drawString("BAR CHART",100, 50);
		for(int i = 0; i < chartData.length; i++){
			g.drawRect(x, yStart + yHeight - (chartData[i]*5), width, chartData[i]*5);
			x = x + width + gap;
		}
	}
}