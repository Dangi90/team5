// 예시: ListController
package com.farmstory.controller.article;

import com.farmstory.DAO.ArticleDAO;
import com.farmstory.DTO.ArticleDTO;
import com.farmstory.DTO.response.ArticleWithNickDTO;
import com.farmstory.service.ArticleService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/article/list.do")
public class ListController extends HttpServlet {

	private ArticleDAO articleDAO = new ArticleDAO();
	private ArticleService service = ArticleService.getInstance();
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String group = request.getParameter("group");
		String category = request.getParameter("cate");

		if (category == null || group == null || category.isEmpty() || group.isEmpty()) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid category or group");
			return;
		}

		List<ArticleWithNickDTO> articles = service.getArticlesByGroupAndCategory(group, category);
		logger.debug("article doGet : {}", articles);

		request.setAttribute("articles", articles);

		// 동적으로 JSP 파일 경로를 설정
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/" + group + "/" + category + ".jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		String group = request.getParameter("group");
		String category = request.getParameter("cate");

		
		String searchType = request.getParameter("searchType");
		String searchText = request.getParameter("searchText");
		String searchCondition = request.getParameter("searchCondition");

		
		logger.debug("group : {}, category : {}", group, category);
		logger.debug("searchType : {}, searchText : {},  searchCondition : {}", searchType, searchText,
				searchCondition);

	}
}
