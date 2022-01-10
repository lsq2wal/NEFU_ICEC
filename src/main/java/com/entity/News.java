package com.entity;

import java.util.Date;

public class News {
    private int id;
    private String topic;
    private Date insertTime;
    private String content;

    public News() {
    }

    public News(int id, String topic, Date insertTime, String content) {
        this.id = id;
        this.topic = topic;
        this.insertTime = insertTime;
        this.content = content;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", topic='" + topic + '\'' +
                ", insertTime=" + insertTime +
                ", content='" + content + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public Date getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
