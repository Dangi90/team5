package com.farmstory.controller.article;

import com.farmstory.DAO.ArticleDAO;
import com.farmstory.DTO.ArticleDTO;
import com.farmstory.DTO.UserDTO;
import com.farmstory.exception.UnAuthorizedException;
import com.farmstory.service.ArticleService;
import com.mysql.cj.log.LogFactory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/article/write.do")
public class WriteController extends HttpServlet {
   private ArticleService service = ArticleService.getInstance();
    private ArticleDAO articleDAO = new ArticleDAO();
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String group = request.getParameter("group");
        String category = request.getParameter("cate");

        if (group == null || group.isEmpty() || category == null || category.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid parameters");
            return;
        }
        request.setAttribute("group", group);
		request.setAttribute("cate", category);
        request.getRequestDispatcher("/WEB-INF/" + group + "/" + category+"/" +"write.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String group = request.getParameter("group");
        String category = request.getParameter("cate");

        HttpSession session = request.getSession();
		UserDTO user = (UserDTO) session.getAttribute("sessUser");
		logger.debug("userDto : {}", user);
		if(user == null)
			throw new  UnAuthorizedException("로그인이 되어있지 않습니다.");
        
        if (group == null || group.isEmpty() || category == null || category.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid parameters");
            return;
        }
        logger.debug("group 값 : {}", group);
        ArticleDTO article = new ArticleDTO();
        article.setUserUid(user.getUid());
        article.setTitle(title);
        article.setContent(content);
        article.setGroup(group);
        article.setCate(category);

        service.createArticle(article);
        
        response.sendRedirect("list.do?group=" + group + "&cate=" + category);
    }
}
/////////컨트롤러