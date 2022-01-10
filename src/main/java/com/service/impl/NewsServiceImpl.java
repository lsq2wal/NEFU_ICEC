package com.service.impl;

import com.entity.News;
import com.service.NewsService;
import com.util.DataSourceUtils;

import javax.xml.crypto.Data;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class NewsServiceImpl implements NewsService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());
    @Override
    public List<News> listNews() {
        List<News> newslist = new ArrayList<>();
        String sql = "SELECT * FROM news";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news = new News(rs.getInt("id"), rs.getString("topic"), rs.getTimestamp("inserttime"),rs.getString("content"));
                newslist.add(news);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return newslist;
    }

    @Override
    public void addNews(int id, String topic, String content) {
        String sql = "INSERT INTO news(id,topic,content) VALUES(?,?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1,id);
            st.setString(2, topic);
            st.setString(3, content);
            st.executeUpdate();
        }catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }

    @Override
    public News getNews(int id) {
        News news = null;
        String sql = "SELECT * FROM news WHERE id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            try(ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news = new News(rs.getInt("id"), rs.getString("topic"), rs.getTimestamp("inserttime"), rs.getString("content"));
                }
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return news;
    }

    @Override
    public void deleteNews(int id) {
        String sql= "DELETE FROM news WHERE id = ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
                 st.setInt(1,id);
                 st.executeUpdate();
        }
        catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }
}
