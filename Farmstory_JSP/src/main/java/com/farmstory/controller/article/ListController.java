// 예시: ListController
package com.farmstory.controller.article;

import com.farmstory.DAO.ArticleDAO;
import com.farmstory.DTO.ArticleDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/article/list.do")
public class ListController extends HttpServlet {

    private ArticleDAO articleDAO = new ArticleDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String group = request.getParameter("group");
        String category = request.getParameter("cate");

        if (category == null || group == null || category.isEmpty() || group.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid category or group");
            return;
        }
        
        // 해당 카테고리의 게시글 목록을 가져옴
        List<ArticleDTO> articles = articleDAO.getArticlesByCategory(category);

        request.setAttribute("articles", articles);
        
        // 동적으로 JSP 파일 경로를 설정
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/" + group + "/" + category +".html");
        dispatcher.forward(request, response);
    }
}
