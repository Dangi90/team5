package com.farmstory.controller.user;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DTO.TermsDto;
import com.farmstory.service.TermsService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/member/terms.do")
public class TermsController extends HttpServlet {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private static final long serialVersionUID = 1L;

	private TermsService service = TermsService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		TermsDto termsDto = service.selectTerms();
		logger.debug("terms : {}", termsDto);
		req.setAttribute("termsDto", termsDto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/member/terms.jsp");
		dispatcher.forward(req, resp);
	}
	
}

