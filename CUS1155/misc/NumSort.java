// eric farkas
// cus 1155 mwf 10:10-11:05
// 111 7.3

import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

public class NumSort extends Applet implements AdjustmentListener{
	Scrollbar s1, s2, s3;
	int s1Val=0, s2Val=0, s3Val=0;
	int top, middle, bottom;
	
	public void init(){
	Label l1 = new Label("Scrollbar 1");
	add(l1);	
	s1 = new Scrollbar(Scrollbar.HORIZONTAL,0,1,0,100);
	add(s1);
	s1.addAdjustmentListener(this);
	
	Label l2 = new Label("Scrollbar 2");
	add(l2);	
	s2 = new Scrollbar(Scrollbar.HORIZONTAL,0,1,0,100);
	add(s2);
	s2.addAdjustmentListener(this);
	
	Label l3 = new Label("Scrollbar 3");
	add(l3);	
	s3 = new Scrollbar(Scrollbar.HORIZONTAL,0,1,0,100);
	add(s3);
	s3.addAdjustmentListener(this);
	}

	public void paint(Graphics g){
	g.drawString("Scrollbar 1 Value: "+s1Val,100,100);
	g.drawString("Scrollbar 2 Value: "+s2Val,100,120);
	g.drawString("Scrollbar 3 Value: "+s3Val,100,140);
	setOrder(s1Val, s2Val, s3Val);
	g.drawString("Highest Value: "+top,100,180);
	g.drawString("Middle Value: "+middle,100,200);
	g.drawString("Lowest Value: "+bottom,100,220);	
	}

	public void adjustmentValueChanged(AdjustmentEvent e){
	s1Val = s1.getValue();
	s2Val = s2.getValue();
	s3Val = s3.getValue();
	repaint();
	}

	
	private void setOrder(int a, int b, int c){
	//top = 0; middle = 0; bottom = 0;
	
	if ((a >= b) && (a >= c)){
		top = a;
		if (b > c){ middle = b; bottom = c; }
		else { middle = c; bottom = b; }
	return;
	}

	if ((b >= a) && (b >= c)){
		top = b;
		if (a > c){ middle = a; bottom = c; }
		else { middle = c; bottom = a;}
	return;
	}
	
	if ((c >= a) && (c >= b)){
		top = c;
		if (a > b){ middle = a; bottom = b; }
		else {middle = b; bottom = a;}
	return;
	}
	}
}