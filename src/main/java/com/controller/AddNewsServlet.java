package com.controller;

import com.service.NewsService;
import com.service.impl.NewsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update")
public class AddNewsServlet extends HttpServlet {
    private final NewsService newsService=new NewsServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String topic = req.getParameter("topic");
        String content = req.getParameter("content");
        newsService.addNews(id,topic,content);
        resp.sendRedirect(req.getContextPath()+ "/index");

    }
}
