package com.controller;

import com.service.NewsService;
import com.service.impl.NewsServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;


@WebServlet("/delete")
public class DeleteNewsServlet extends HttpServlet {
    private final NewsService newsService=new NewsServiceImpl();
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        newsService.deleteNews(id);
        resp.sendRedirect(req.getContextPath()+ "/index");
        logger.info("修改成功"+"id");

    }
}
