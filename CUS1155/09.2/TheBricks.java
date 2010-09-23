import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

public class TheBricks extends Applet implements ActionListener{
	private Button moveLeft, moveRight, shrink, grow, rotate;
	private Brick testBrick;
	
	public void init(){
		moveLeft = new Button("Move Left");
		add(moveLeft);
		moveLeft.addActionListener(this);
		
		moveRight = new Button("Move Right");
		add(moveRight);
		moveRight.addActionListener(this);
		
		shrink = new Button("Shrink");
		add(shrink);
		shrink.addActionListener(this);
		
		grow = new Button("Grow");
		add(grow);
		grow.addActionListener(this);
		
		rotate = new Button("Rotate 90");
		add(rotate);
		rotate.addActionListener(this);
		
		testBrick = new Brick(60,25);
	}
	
	public void actionPerformed(ActionEvent e){
		if (e.getSource() == moveLeft)
			testBrick.moveBrick(20);
		if (e.getSource() == moveRight)
			testBrick.moveBrick(-20);
		if (e.getSource() == shrink)
			testBrick.changeBrickSize("shrink");
		if (e.getSource() == grow)
			testBrick.changeBrickSize("grow");
		if (e.getSource() == rotate)
			testBrick.rotateBrick();
		repaint();
	}
	
	public void paint(Graphics g){
		testBrick.drawBrick(g);
	}
}	

class Brick{
	private int width, height;
	private int xCoord, yCoord;
	
	public Brick(int w, int h){
		width = w;
		height = h;
		xCoord = 50;
		yCoord = 50;
		}
	
	public void moveBrick(int pixels){
		xCoord -= pixels;
	}
	
	public void changeBrickSize(String size){
		if (size == "grow"){
			height+=10;
			width+=10;
		}
		if (size == "shrink"){
			height-=10;
			width-=10;
		}
	}
	
	public void rotateBrick(){
		int temp = height;
		height = width;
		width = temp;		
	}
	
	public void drawBrick(Graphics g){
		g.drawRect(xCoord, yCoord, width, height);
	}		
}