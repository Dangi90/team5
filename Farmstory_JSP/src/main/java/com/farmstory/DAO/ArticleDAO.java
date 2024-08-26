package com.farmstory.DAO;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.farmstory.DTO.ArticleDTO;

public class ArticleDAO {

    // 데이터베이스 연결 유틸리티 클래스
    private Connection getConnection() throws SQLException {
        // Database connection code (예: JDBC)
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/farmstory", "username", "password");
    }

    // 특정 카테고리의 게시글 목록 조회
    public List<ArticleDTO> getArticlesByCategory(String category) {
        List<ArticleDTO> articles = new ArrayList<>();
        String sql = "SELECT * FROM articles WHERE category = ? ORDER BY id DESC";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, category);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                ArticleDTO article = new ArticleDTO();
                article.setId(rs.getInt("id"));
                article.setUserUid(rs.getString("user_uid"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setRegdate(rs.getString("regdate"));
                article.setViews(rs.getInt("views"));
                articles.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return articles;
    }

    // 게시글 작성
    public void insertArticle(ArticleDTO article) {
        String sql = "INSERT INTO articles (user_uid, title, content, regdate, views) VALUES (?, ?, ?, NOW(), 0)";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, article.getUserUid());
            pstmt.setString(2, article.getTitle());
            pstmt.setString(3, article.getContent());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 특정 ID의 게시글 조회
    public ArticleDTO getArticleById(int id) {
        String sql = "SELECT * FROM articles WHERE id = ?";
        ArticleDTO article = null;

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                article = new ArticleDTO();
                article.setId(rs.getInt("id"));
                article.setUserUid(rs.getString("user_uid"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setRegdate(rs.getString("regdate"));
                article.setViews(rs.getInt("views"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return article;
    }

    // 게시글 수정
    public void updateArticle(ArticleDTO article) {
        String sql = "UPDATE articles SET title = ?, content = ?, user_uid = ?, regdate = NOW() WHERE id = ?";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, article.getTitle());
            pstmt.setString(2, article.getContent());
            pstmt.setString(3, article.getUserUid());
            pstmt.setInt(4, article.getId());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 게시글 삭제
    public void deleteArticle(int id) {
        String sql = "DELETE FROM articles WHERE id = ?";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
