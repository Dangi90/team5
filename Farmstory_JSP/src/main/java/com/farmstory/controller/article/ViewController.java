package com.farmstory.controller.article;

import com.farmstory.DAO.ArticleDAO;
import com.farmstory.DTO.ArticleDTO;
import com.farmstory.DTO.response.ArticleWithNickDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/article/view.do")
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArticleDAO articleDAO = new ArticleDAO();
	private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String no = request.getParameter("no");
        String group = request.getParameter("group");
        String category = request.getParameter("cate");

        if (no == null || no.isEmpty() || group == null || group.isEmpty() || category == null || category.isEmpty()) {
        	logger.trace("파라미터 null");
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid parameters");
            return;
        }
        request.setAttribute("group", group);
		request.setAttribute("cate", category);
		request.setAttribute("no", no);
        try {
            int id = Integer.parseInt(no);
            articleDAO.increaseViews(id);
            ArticleWithNickDTO article = articleDAO.getArticleByCategoryWithNickByNo(id);

            if (article == null) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Article not found");
                return;
            }

            request.setAttribute("article", article);
            request.getRequestDispatcher("/WEB-INF/" + group + "/" + category+"/" +"view.jsp").forward(request, response);

        } catch (NumberFormatException e) {
        	logger.error("error", e);
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid article ID format");
        }
    }
}
