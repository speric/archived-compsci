// eric farkas
// cus 1155 mwf 10:10-11:05
// 111 7.7

import java.awt.*;
import java.awt.event.*;
import java.applet.Applet;

public class RSPGame extends Applet implements ActionListener{
	private Button rock, scissor, paper;
	private TextField txtName;
	private String userMove, compMove, name;
	private int userNum, compNum;
		
	public void init(){
		txtName = new TextField(15);
		add(txtName);
		txtName.addActionListener(this);
	
		rock = new Button("Rock");
		add(rock);
		rock.addActionListener(this);
		
		scissor = new Button("Scissor");
		add(scissor);
		scissor.addActionListener(this);

		paper = new Button("Paper");
		add(paper);
		paper.addActionListener(this);
	}

	public void actionPerformed(ActionEvent e){
		compNum = (int)(Math.random() * 3) + 1;
		
		if (compNum == 1)
			compMove = "Rock";
		if (compNum == 2)
			compMove = "Scissor";
		if (compNum == 3)
			compMove = "Paper";

		name = txtName.getText();

		if (e.getSource() == rock){
			userMove = "Rock";
			userNum = 1;
		}
		if (e.getSource() == scissor){
			userMove = "Scissor";
			userNum = 2;
		}
		if (e.getSource() == paper){
			userMove = "Paper";
			userNum = 3;
		}
		repaint();
	}

	public void paint(Graphics g){
		setBackground(Color.black);
		g.setColor(Color.white);

		g.drawString("Your move: "+userMove,100,100);
		g.drawString("The computer's move: "+compMove,100,120);

		
	switch(userNum){
	case 1:
		if (compNum == 2)
			g.drawString("User wins",100,140);
		if (compNum == 3)
			g.drawString("Computer wins",100,140);
		break;
	case 2:
		if (compNum == 3)
			g.drawString("User wins",100,140);
		if (compNum == 1)
			g.drawString("Computer wins",100,140);
		break;
	case 3:
		if (compNum == 1)
			g.drawString("User wins",100,140);
		if (compNum == 2)
			g.drawString("Computer wins",100,140);
		break;
	default:break;
	}
		if (userMove == compMove)
			g.drawString("Tie",100,140);
	
	g.setColor(Color.yellow);
	g.drawString("Thanks for playing "+name+"!!",100,160);
	}

}