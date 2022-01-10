package com.entity;

public class Teacher
{
    private int id;
    private String name;
    private String picture;
    private String details;
    private String title;

    public Teacher() {
    }

    public Teacher(int id, String name, String picture, String details, String title) {
        this.id = id;
        this.name = name;
        this.picture = picture;
        this.details = details;
        this.title = title;
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

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Teachers{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", picture='" + picture + '\'' +
                ", details='" + details + '\'' +
                ", title='" + title + '\'' +
                '}';
    }
}
