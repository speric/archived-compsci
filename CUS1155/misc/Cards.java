// eric farkas
// cus 1155 mwf 10:10-11:05
// 111 # 7.2

import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

public class Cards extends Applet implements ActionListener{
	private Button selectCard;
	private int suitNum, cardNum;
	private String suit = new String("null");
	private String card = new String("null");

	public void init(){
		selectCard = new Button ("Select Card");
		add(selectCard);
		selectCard.addActionListener(this);
	}

	public void actionPerformed(ActionEvent e){
	suitNum = (int)(Math.random() * 4) + 1;
	cardNum = (int)(Math.random() * 13) + 1;
	repaint();
	}

	public void paint(Graphics g){
	switch (suitNum) {
	case 1:
		suit = "Hearts";
		break;
	case 2:
		suit = "Diamonds";
		break;
	case 3:
		suit = "Clubs";
		break;
	case 4:
		suit = "Spades";
		break;
	default: break;
	}

	switch (cardNum){
	case 1:
		card = "Ace";
		break;
	case 11:
		card = "Jack";
		break;
	case 12:
		card = "Queen";
		break;
	case 13:
		card = "King";
		break;
	default:
		card = ""+cardNum;
		break;
	}

	g.drawString("You chose a "+card+" of "+suit,100, 100);
}
}