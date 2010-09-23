import java.awt.*;
import java.awt.event.*;
import java.applet.Applet;

public class Turtle extends Applet implements ActionListener, AdjustmentListener{
	private Scrollbar pixels;
	private Button penUp, penDown, turnRight, turnLeft,goForward;
	private String status;
	private char direction;
	private int[] xArray;
	private int[] yArray;
	private int movePixels = 0;
	private int coordCount = 0;
	
	
	public void init(){
		Label l1 = new Label("Pixels");
		add(l1);
		pixels = new Scrollbar(Scrollbar.HORIZONTAL,0,1,0,100);
		add(pixels);
		pixels.addAdjustmentListener(this);
		
		penUp = new Button("Pen Up");
		add(penUp);
		penUp.addActionListener(this);
		
		penDown = new Button("Pen Down");
		add(penDown);
		penDown.addActionListener(this);
		
		turnRight = new Button("Turn Right 90");
		add(turnRight);
		turnRight.addActionListener(this);
		
		turnLeft = new Button("Turn Left 90");
		add(turnLeft);
		turnLeft.addActionListener(this);
		
		goForward = new Button("Go Forward");
		add(goForward);
		goForward.addActionListener(this);
		
		xArray = new int[100];
		yArray = new int[100];
		direction = 'S';
		status = "Pen Down";
		
		xArray[0]=0;
		yArray[0]=0;
		coordCount++;
	}

	public void adjustmentValueChanged(AdjustmentEvent e){
		movePixels = pixels.getValue();
		repaint();
	}
	
	public void actionPerformed(ActionEvent e){
		if (e.getSource() == goForward){
			if (status == "Pen Down"){
			if(direction=='S'){
				xArray[coordCount] = xArray[coordCount-1];
				yArray[coordCount] = yArray[coordCount-1] + movePixels;
				coordCount++;
			}
			
			if(direction=='N'){
				xArray[coordCount] = xArray[coordCount-1];
				yArray[coordCount] = yArray[coordCount-1] - movePixels;
				coordCount++;
			}
			
			if(direction=='E'){
				xArray[coordCount] = xArray[coordCount-1] + movePixels;
				yArray[coordCount] = yArray[coordCount-1];
				coordCount++;
			}
			
			if(direction=='W'){
				xArray[coordCount] = xArray[coordCount-1] - movePixels;
				yArray[coordCount] = yArray[coordCount-1];
				coordCount++;
			}
		}
			if (status == "Pen Up"){
			if(direction=='S'){
				xArray[coordCount] = (xArray[coordCount-1]) * -1;
				yArray[coordCount] = (yArray[coordCount-1] + movePixels) * -1;
				coordCount++;
			}
			
			if(direction=='N'){
				xArray[coordCount] = (xArray[coordCount-1]) * -1;
				yArray[coordCount] = (yArray[coordCount-1] - movePixels) * -1;
				coordCount++;
			}
			
			if(direction=='E'){
				xArray[coordCount] = (xArray[coordCount-1] + movePixels) * -1;
				yArray[coordCount] = (yArray[coordCount-1]) * -1;
				coordCount++;
			}
			
			if(direction=='W'){
				xArray[coordCount] = (xArray[coordCount-1] - movePixels) * -1;
				yArray[coordCount] = (yArray[coordCount-1]) * -1;
				coordCount++;
			}
		}
		}
		
		if (e.getSource() == penUp){
			status = "Pen Up";
		}
		
		if (e.getSource() == penDown){
			status = "Pen Down";
			xArray[coordCount] = (xArray[coordCount-1]) * -1;
			yArray[coordCount] = (yArray[coordCount-1]) * -1;
			coordCount++;
		}
		
		if (e.getSource() == turnRight){
			switch(direction){
			case 'W':
				direction = 'N';
				break;
			case 'E':
				direction = 'S';
				break;
			case 'N':
				direction = 'E';
				break;
			case 'S':
				direction = 'W';
				break;
			default:break;
			}
		}
		
		if (e.getSource() == turnLeft){
			switch(direction){
			case 'W':
				direction = 'S';
				break;
			case 'E':
				direction = 'N';
				break;
			case 'N':
				direction = 'W';
			case 'S':
				direction = 'E';
			default:break;
		}
	}
		repaint();
	}
	
	public void paint(Graphics g){
		g.drawString("Pixels:"+movePixels,100,50);
		g.drawString("Turtle Status:"+status,100,65);
		g.drawString("Turtle Direction:"+direction,100,80);
		for(int i = 1; i < coordCount; i++){
			if(xArray[i] >= 0 && yArray[i] >= 0)
				g.drawLine(xArray[i-1],yArray[i-1],xArray[i],yArray[i]);
		}
	}
}