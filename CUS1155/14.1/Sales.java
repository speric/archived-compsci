// CUS 1155 MWF 10:10-11:05
// eric farkas
// 14.1 

import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

public class Sales extends Applet implements ActionListener, MouseListener{

	//private int sum;
	private Table sales;
	private TextField value;
	private Button sums, largest, scale;
	
	public void init(){
		sales = new Table(3,7);
		Label lblOne = new Label("Enter number and click component:");
		add(lblOne);
		value = new TextField(8);
		add(value);
		value.addActionListener(this);
		this.addMouseListener(this);
		
		sums = new Button("Sums");
		add(sums);
		sums.addActionListener(this);
		
		largest = new Button("Largest");
		add(largest);
		largest.addActionListener(this);
		
		scale = new Button("Scale");
		add(scale);
		scale.addActionListener(this);
	}
	
	public void paint(Graphics g){
		sales.display(g);
	}
	
	public void actionPerformed(ActionEvent e){
		int newValue = Integer.parseInt(value.getText());
		sales.setValue(newValue);
		
		if (e.getSource() == sums)
			sales.calculateSum();	
			
		if (e.getSource() == largest)
			sales.calculateLargest();
		
		if (e.getSource() == scale)
			sales.scaleValues(newValue);
		repaint();
	}
	
	public void mouseClicked(MouseEvent e){
		int x = e.getX();
		int y = e.getY();
		sales.selectComponent(x,y);
		repaint();
	}
	
	public void mouseReleased(MouseEvent e){
	}
	
	public void mousePressed(MouseEvent e){
	}
	
	public void mouseEntered(MouseEvent e){
	}
	
	public void mouseExited(MouseEvent e){
	}
}

class Table{
	private int[][] data;
	private int rowIndex;
	private int colIndex;
	private int newValue;

	private int sum = 0;
	private int largest = 0;

	private final int xStart = 20;
	private final int yStart = 60;
	private final int boxHeight = 20;
	private final int boxWidth = 40;
	
	public Table(int rows, int columns){
		data = new int[rows][columns];
		for(int row = 0; row < rows; row++){
			for(int col = 0; col < columns; col++)
				data[row][col] = 0;
			}
	}
	
	public void display(Graphics g){
		for(int row = 0; row < data.length; row++){
			for(int col = 0; col < data[0].length; col++){
				int x = xStart + col * boxWidth;
				int y = yStart + row * boxHeight;
				g.drawRect(x, y, boxWidth, boxHeight);
				g.drawString(Integer.toString(data[row][col]), x, y + boxHeight*3/4);
				g.drawString("Total is " +sum, 100, 150);
				g.drawString("Largest is " +largest, 100, 180);
			}
		}
	}
	
	public void selectComponent(int x, int y){
		rowIndex = (y - yStart)/boxHeight;
		colIndex = (x - xStart)/boxWidth;
		data[rowIndex][colIndex] = newValue;
	}
	
	public void setValue(int value){
		newValue = value;
	}
	
	public void calculateSum(){
		for(int row = 0; row < data.length; row++)
			for(int col = 0; col < data[0].length; col++)
			sum += data[row][col];
		}
	
	public void calculateLargest(){
		for(int row = 0; row < data.length; row++)
			for(int col = 0; col < data[0].length; col++)
				if(data[row][col] > largest)
					largest = data[row][col];
		}
	public void scaleValues(int scaleValue){
		for(int row = 0; row < data.length; row++)
			for(int col = 0; col < data[0].length; col++)
				data[row][col] *= scaleValue;
		}
	}