package com.service;

import com.entity.News;

import javax.xml.crypto.Data;
import java.util.List;

public interface NewsService {
    /**
     * 查询全部新闻
     * @return
     */
    public List<News> listNews();
    /**
     * 添加新闻
     * @param topic
     * @param content
     */
    public void addNews(int id, String topic, String content);
    /**
     * 基于ID获取指定新闻
     * @param id
     * @return
     */
    public News getNews(int id);

    /**
     * 基于ID删除指定新闻
     * @param id
     */
    public void deleteNews(int id);
}
