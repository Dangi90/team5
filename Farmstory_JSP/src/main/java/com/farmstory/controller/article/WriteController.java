package com.farmstory.controller.article;

import com.farmstory.DAO.ArticleDAO;
import com.farmstory.DTO.ArticleDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/article/write.do")
public class WriteController extends HttpServlet {

    private ArticleDAO articleDAO = new ArticleDAO();

//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String group = request.getParameter("group");
//        String category = request.getParameter("cate");
//
//        if (group == null || group.isEmpty() || category == null || category.isEmpty()) {
//            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid parameters");
//            return;
//        }
//
//        request.getRequestDispatcher("/article/" + group + "/write.jsp").forward(request, response);
//    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String group = request.getParameter("group");
        String category = request.getParameter("cate");
        String userUid = request.getParameter("user_uid");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        if (group == null || group.isEmpty() || category == null || category.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid parameters");
            return;
        }

        ArticleDTO article = new ArticleDTO();
        article.setUserUid(userUid);
        article.setTitle(title);
        article.setContent(content);

        articleDAO.insertArticle(article);
        response.sendRedirect("list.do?group=" + group + "&cate=" + category);
    }
}
