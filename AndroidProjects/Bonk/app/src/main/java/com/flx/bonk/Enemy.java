package com.flx.bonk;

import android.graphics.Rect;

public class Enemy {
	int x, y;
	int min, max;
	boolean right;
	int sp;
	private int[] sprites = { 16, 17, 16, 17, 16, 17, 20, 18, 19, 18, 19, 18, 19, 20 };

	public Enemy(){}

	public Enemy(int x, int y, int min, int max, boolean right) {
		this.x = x;
		this.y = y;
		this.min = min;
		this.max = max;
		this.right = right;
		this.sp = (int)(Math.random() * sprites.length);
	}
	public int nextSprite() {
		sp = (sp + 1) % sprites.length;
		return sprites[sp];
	}
	
	public void update(long delta) {
		if (right) {
			x++;
			right = (x != max);
		}
		else {
			x--;
			right = (x == min);
		}
	}
	
	private Rect bounds = new Rect();
	public Rect getBounds() {
		bounds.left = x + 2;
		bounds.right = x + 30;
		bounds.top = y - 14;
		bounds.bottom = y;
		return bounds;
	}
}

