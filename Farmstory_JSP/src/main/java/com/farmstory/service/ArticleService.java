package com.farmstory.service;

import com.farmstory.DAO.ArticleDAO;
import com.farmstory.DTO.ArticleDTO;

import java.util.List;

public class ArticleService {
	private static ArticleService instance = new ArticleService();

	public static ArticleService getInstance() {
		return instance;
	}

	private ArticleDAO articleDAO = new ArticleDAO();

	public List<ArticleDTO> getArticlesByGroupAndCategory(String group, String category) {
		return articleDAO.getArticlesByCategory(group, category);
	}

	public void createArticle(ArticleDTO article) {
		articleDAO.insertArticle(article);
	}

	public ArticleDTO getArticleById(int id) {
		return articleDAO.getArticleById(id);
	}

	public void updateArticle(ArticleDTO article) {
		articleDAO.updateArticle(article);
	}

	public void deleteArticle(int id) {
		articleDAO.deleteArticle(id);
	}
}
