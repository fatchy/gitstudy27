package com.yc.holle;

import java.util.Random;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class BallGame {

	protected Shell shell;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			BallGame window = new BallGame();
			window.open();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Open the window.
	 */
	public void open() {
		Display display = Display.getDefault();
		createContents();
		shell.open();
		shell.layout();
		while (!shell.isDisposed()) {
			if (!display.readAndDispatch()) {
				display.sleep();
			}
		}
	}

	/**
	 * Create contents of the window.
	 */
	
	private Composite composite;
	protected void createContents() {
		shell = new Shell();
		shell.setSize(450, 300);
		shell.setText("滚动的球");
		
		composite=new Composite(shell,SWT.NONE);
		
		composite.setBounds(0,0,shell.getBounds().width,shell.getBounds().height);
		
		Random r=new Random();
		Color color=new Color(shell.getDisplay(),r.nextInt(255),r.nextInt(255),r.nextInt(255));
		Ball b1=new Ball(composite,color);
		b1.setDaemon(true);
		b1.start();
		color=new Color(shell.getDisplay(),r.nextInt(255),r.nextInt(255),r.nextInt(255));
		Ball b2=new Ball(composite,color);
		b2.setDaemon(true);
		b2.start();
		
	}

}
