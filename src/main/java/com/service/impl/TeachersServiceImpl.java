package com.service.impl;

import com.entity.Teacher;
import com.service.TeachersService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class TeachersServiceImpl implements TeachersService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());

    @Override
    public List<Teacher> listTeachers() {
        List<Teacher> teachers = new ArrayList<>();
        String sql = "SELECT * FROM Teachers";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql);
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Teacher teacher = new Teacher(rs.getInt("id"), rs.getString("name"), rs.getString("picture"), rs.getString("details"), rs.getString("title"));
                teachers.add(teacher);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return teachers;
    }

    @Override
    public List<Teacher> getTeachers(int title) {
        List<Teacher> teachers = new ArrayList<>();
        String sql="SELECT * FROM Teachers WHERE title=?";
        try(Connection conn=DataSourceUtils.getConnection();
            PreparedStatement st=conn.prepareStatement(sql)) {
            st.setInt(1, title);
            try(ResultSet rs = st.executeQuery()) {
                while(rs.next()){
                    Teacher teacher=new Teacher(rs.getInt("id"),rs.getString("name"),rs.getString("picture"),rs.getString("details"),rs.getString("title"));
                    teachers.add(teacher);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teachers;
    }

    @Override
    public Teacher getTeacher(int id) {
        Teacher teacher=null;
        String sql="SELECT * FROM Teachers WHERE id=?";
        try(Connection conn=DataSourceUtils.getConnection();
            PreparedStatement st=conn.prepareStatement(sql)) {
            st.setInt(1,id);
            try(ResultSet rs = st.executeQuery()) {
                while(rs.next()){
                   teacher=new Teacher(rs.getInt("id"),rs.getString("name"),rs.getString("picture"),rs.getString("details"),rs.getString("title"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teacher;
    }

}
