package com.flx.bonk;

/**
 * Created by Xavi on 11/04/16.
 */
public class NewEnemyXavi extends Enemy {

    public NewEnemyXavi(int x, int y, int min, int max, boolean right) {
        this.x = x;
        this.y = y;
        this.min = min;
        this.max = max;
        this.right = right;
        this.sp = (int)(Math.random() * sprites.length);
    }

    @Override
    public void update(long delta) {
        if (right) {
            y++;
            right = (y != max);
        }
        else {
            y--;
            right = (y == min);
        }
    }
}
