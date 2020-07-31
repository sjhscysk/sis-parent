package com.ruoyi.data.utils;

/**
 * 坐标
 * @author afeey
 */
public class Coordinate {
    private double x; //x(经度)
    private double y; //y(纬度)

    public Coordinate() {
        this(0d, 0d);
    }

    public Coordinate(double x, double y) {
        this.x = x;
        this.y = y;
    }

    public double getX() {
        return x;
    }

    public void setX(double x) {
        this.x = x;
    }

    public double getY() {
        return y;
    }

    public void setY(double y) {
        this.y = y;
    }
}
