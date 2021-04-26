package com.zxj.pojo;

public class BusDriver {
    private int id;
    private String name;
    private String message;

    @Override
    public String toString() {
        return "BusDriver{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", message='" + message + '\'' +
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

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public BusDriver() {

    }

    public BusDriver(int id, String name, String message) {
        this.id = id;
        this.name = name;
        this.message = message;
    }
}
