package com.yc.holle;

import java.util.Random;

import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;

public class Ball extends Thread {
	private Composite mainPal;  //球在mainPal这个面板中绘制
	private boolean flag;
	private Random r=new Random();
	private GC gc;
	private int x,y;
	private int radius;
	
	private int dx;
	private int dy;
	
	private int width;
	private int height;
	
	private Color color;
	
	
	public Ball(final Composite mainPal ,Color color ){
		this.mainPal=mainPal;
		this.color=color;
		
		this.x=r.nextInt(this.mainPal.getBounds().width);
		this.y=r.nextInt(this.mainPal.getBounds().height);
		this.radius=r.nextInt(5);
		
		this.dx=r.nextInt(5);
		this.dy=r.nextInt(5);
		
		Display.getDefault().asyncExec(new Runnable(){
			@Override
			public void run() {
				width=mainPal.getBounds().width;
				height=mainPal.getBounds().height;
			}
		});
		
	}
	private void draw(){		
		Display.getDefault().asyncExec(new Runnable(){

			@Override
			public void run() {
				gc=new GC(mainPal);
				
				gc.setBackground(color);
				gc.fillOval(x, y, radius, radius);
				gc.fillOval(x-radius, y-radius, radius, radius);
				
				gc.dispose();
			}
			
		});
	}
	
	private void move(){
		x=x+dx;
		y=y+dy;
		if(x>=width || x<=0){
			dx=-dx;
		}
		if(y>=height || y<=0){
			dy=-dy;
		}
	}
	
	@Override
	public void run() {
		while(!flag){
			try {
				Thread.sleep(r.nextInt(500));
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			move();
			draw();
		}
		
	}
	
	
}
