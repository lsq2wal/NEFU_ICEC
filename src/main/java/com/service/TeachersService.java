package com.service;

import com.entity.Teacher;

import java.util.List;

public interface TeachersService {
    /**
     *查询全部老师
     * @return
     */
    public List<Teacher> listTeachers();

    /**
     * 基于职称查询老师
     * @param title 教师职称
     * @return
     */
    public List<Teacher> getTeachers(int title);
    public Teacher getTeacher(int id);
}
