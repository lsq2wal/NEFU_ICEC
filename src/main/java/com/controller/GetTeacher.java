package com.controller;


import com.service.TeachersService;
import com.service.impl.TeachersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.logging.Logger;

@WebServlet("/getteacher")
public class GetTeacher extends HttpServlet {
    private final TeachersService teachersService = new TeachersServiceImpl();
    private static Logger logger = Logger.getLogger(TeachersServiceImpl.class.getName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("tid"));
        req.setAttribute("teacher", teachersService.getTeacher(id));
        req.getRequestDispatcher("/WEB-INF/jsp/teacher.jsp")
                .forward(req, resp);
        logger.info("teacher");
    }
}
