package com.farmstory.controller.article;

import com.farmstory.DAO.ArticleDAO;
import com.farmstory.DTO.ArticleDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/article/modify.do")
public class ModifyController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private ArticleDAO articleDAO = new ArticleDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");
        String group = request.getParameter("group");
        String category = request.getParameter("cate");

        // 파라미터 검증
        if (idParam == null || idParam.isEmpty() || group == null || group.isEmpty() || category == null || category.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid parameters");
            return;
        }

        try {
            int id = Integer.parseInt(idParam);
            ArticleDTO article = articleDAO.getArticleById(id);

            if (article == null) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Article not found");
                return;
            }

            request.setAttribute("article", article);
            request.getRequestDispatcher("/WEB-INF/" + group + "/" + category+"/" +"modify.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid article ID format");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");
        String group = request.getParameter("group");
        String category = request.getParameter("cate");
        String userUid = request.getParameter("user_uid");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        if (idParam == null || idParam.isEmpty() || group == null || group.isEmpty() || category == null || category.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid parameters");
            return;
        }

        try {
            int id = Integer.parseInt(idParam);

            ArticleDTO article = new ArticleDTO();
            article.setNo(id);
            article.setUserUid(userUid);
            article.setTitle(title);
            article.setContent(content);

            articleDAO.updateArticle(article);
            response.sendRedirect("list.do?group=" + group + "&cate=" + category);

        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid article ID format");
        }
    }
}
