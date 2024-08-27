package com.farmstory.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.farmstory.DTO.ArticleDTO;
import com.farmstory.DTO.response.ArticleWithNickDTO;
import com.farmstory.Util.DBHelper;

public class ArticleDAO extends DBHelper {
	// 게시글 작성
	public void insertArticle(ArticleDTO article) {
		String sql = "INSERT INTO article (user_uid, title, content, `group`, cate, regdate, views) VALUES (?, ?, ?, ?,?, NOW(), 0)";

		try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, article.getUserUid());
			pstmt.setString(2, article.getTitle());
			pstmt.setString(3, article.getContent());
			pstmt.setString(4, article.getGroup());
			pstmt.setString(5, article.getCate());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 특정 ID의 게시글 조회
	public ArticleDTO getArticleById(int id) {
		String sql = "SELECT * FROM articles WHERE id = ?";
		ArticleDTO article = null;

		try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				article = new ArticleDTO();
				article.setNo(rs.getInt("id"));
				article.setUserUid(rs.getString("user_uid"));
				article.setTitle(rs.getString("title"));
				article.setContent(rs.getString("content"));
				article.setRegdate(rs.getString("regdate"));
				
				article.setViews(rs.getInt("views"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return article;
	}

	// 게시글 수정
	public void updateArticle(ArticleDTO article) {
		String sql = "UPDATE articles SET title = ?, content = ?, user_uid = ?, regdate = NOW() WHERE id = ?";

		try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, article.getTitle());
			pstmt.setString(2, article.getContent());
			pstmt.setString(3, article.getUserUid());
			pstmt.setInt(4, article.getNo());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 게시글 삭제
	public void deleteArticle(int id) {
		String sql = "DELETE FROM articles WHERE id = ?";

		try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<ArticleDTO> getArticlesByCategory(String group, String category) {
		String sql = "SELECT * FROM article WHERE `group`=? AND cate=?";
		List<ArticleDTO> articles = new ArrayList<>();
		try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, group);
			pstmt.setString(2, category);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				ArticleDTO article = new ArticleDTO();
				article.setNo(rs.getInt(1));
				article.setUserUid(rs.getString(2));
				article.setTitle(rs.getString(3));
				article.setContent(rs.getString(4));
				article.setRegdate(rs.getString(5));
				article.setViews(rs.getInt(6));
				article.setGroup(rs.getString(7));
				article.setCate(rs.getString(8));
				articles.add(article);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}

		return articles;
	}
	
	public List<ArticleWithNickDTO> getArticlesByCategoryWithNick(String group, String category) {
		String sql = "SELECT article.*, nick FROM article LEFT JOIN user ON user.uid = article.user_uid WHERE `group`=? AND cate=? ";
		List<ArticleWithNickDTO> articles = new ArrayList<>();
		try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, group);
			pstmt.setString(2, category);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				ArticleWithNickDTO article = new ArticleWithNickDTO();
				article.setNo(rs.getInt(1));
				article.setUserUid(rs.getString(2));
				article.setTitle(rs.getString(3));
				article.setContent(rs.getString(4));
				article.setRegdate(rs.getString(5));
				article.setViews(rs.getInt(6));
				article.setGroup(rs.getString(7));
				article.setCate(rs.getString(8));
				article.setNick(rs.getString(9));
				articles.add(article);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}

		return articles;
	}
}
