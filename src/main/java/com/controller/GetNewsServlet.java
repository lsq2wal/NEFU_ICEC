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

@WebServlet("/getnews")
public class GetNewsServlet extends HttpServlet {
    private final NewsService newsService=new NewsServiceImpl();
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取指定ID用户的详细信息
        int id = Integer.parseInt(req.getParameter("nid"));
        req.setAttribute("news", newsService.getNews(id));
        req.getRequestDispatcher("/WEB-INF/jsp/news.jsp")
                .forward(req, resp);
        logger.info("news");

    }

}
