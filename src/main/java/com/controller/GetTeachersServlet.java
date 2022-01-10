package com.controller;


import com.entity.Teacher;
import com.service.TeachersService;
import com.service.impl.NewsServiceImpl;
import com.service.impl.TeachersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.logging.Logger;

@WebServlet("/getteachers")
public class GetTeachersServlet extends HttpServlet {
    private final TeachersService teachersService = new TeachersServiceImpl();
    private static Logger logger = Logger.getLogger(TeachersServiceImpl.class.getName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setAttribute("teachers", teachersService.listTeachers());
        req.getRequestDispatcher("/WEB-INF/jsp/teachers.jsp")
                .forward(req, resp);
        logger.info("teachers");
    }
}
