package com.zxj.pojo;

public class Car {
    private int id;
    private String name;
    private int driverId;
    private String location;
    private int count;


    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", Cname='" + name + '\'' +
                ", driverId=" + driverId +
                ", location='" + location + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDriverId() {
        return driverId;
    }

    public void setDriverId(int driverId) {
        this.driverId = driverId;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Car(int id, String name, int driverId, String location) {
        this.id = id;
        this.name = name;
        this.driverId = driverId;
        this.location = location;
    }

    public Car() {
    }
}
