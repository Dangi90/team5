package com.farmstory.service;

import com.farmstory.DAO.ArticleDAO;
import com.farmstory.DTO.ArticleDTO;

import java.util.List;

public class ArticleService {
    private ArticleDAO articleDAO = new ArticleDAO();

    public List<ArticleDTO> getArticlesByCategory(String category) {
        return articleDAO.getArticlesByCategory(category);
    }

    public void insertArticle(ArticleDTO article) {
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
