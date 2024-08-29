package com.farmstory.DAO;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DTO.UserDTO;
import com.farmstory.Util.DBHelper;
import com.farmstory.Util.SQL;
import com.mysql.cj.log.LogFactory;

public class UserDAO extends DBHelper {
	private static UserDAO instance = new UserDAO();
	public static UserDAO getInstance() {
		return instance;
	}
	private UserDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public int selectCountUser(String type, String value) {
		
		int result = 0;
		
		StringBuilder sql = new StringBuilder(SQL.SELECT_COUNT_USER);
		
		if(type.equals("uid")) {
			sql.append(SQL.WHERE_UID);
		}else if(type.equals("nick")) {
			sql.append(SQL.WHERE_NICK);
		}else if(type.equals("email")) {
			sql.append(SQL.WHERE_EMAIL);
		}else if(type.equals("hp")) {
			sql.append(SQL.WHERE_HP);
		}
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, value);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			closeAll();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return result;
	}
	
	
 	public void insertUser(UserDTO dto) {
 		logger.debug("grade 값 : {}", dto.getGrade());
 		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.INSERT_USER);
			psmt.setString(1, dto.getUid());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getNick());
			psmt.setString(5, dto.getEmail());
			psmt.setString(6, dto.getHp());
			psmt.setString(7, dto.getGrade());
			psmt.setString(8, dto.getAddr());
			psmt.setString(9, dto.getRegip());
			// psmt.setString(11, dto.getRegdate());
			psmt.executeUpdate();
			closeAll();
		}catch (Exception e) {
			logger.error("insertUser Exception", e);
		}
	}
	public UserDTO selectUser(String uid, String pass) {
		
		UserDTO user = null;
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.SELECT_USER);
			psmt.setString(1, uid);
			psmt.setString(2, pass);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				user = new UserDTO();
				user.setUid(rs.getString(1));
				user.setPass(rs.getString(2));
				user.setName(rs.getString(3));
				user.setNick(rs.getString(4));
				user.setEmail(rs.getString(5));
				user.setHp(rs.getString(6));
				user.setGrade(rs.getString(7));
				user.setAddr(rs.getString(8));
				user.setRegip(rs.getString(9));
				user.setRegdate(rs.getString(10));
				user.setIsAdmin(rs.getString(11));
			}
			closeAll();
		}catch (Exception e) {
			logger.error("selectUser Exception", e);
		}
		
		return user;
	}
	public List<UserDTO> selectUsers() {
	    List<UserDTO> users = new ArrayList<>();
	    
	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(SQL.SELECT_USERS);  // SQL.SELECT_USERS 는 아래 SQL 클래스에 정의합니다.
	        rs = psmt.executeQuery();
	        
	        while (rs.next()) {
	            UserDTO user = new UserDTO();
	            user.setUid(rs.getString("uid"));
	            user.setPass(rs.getString("pass"));
	            user.setName(rs.getString("name"));
	            user.setNick(rs.getString("nick"));
	            user.setEmail(rs.getString("email"));
	            user.setHp(rs.getString("hp"));
	            user.setGrade(rs.getString("grade"));
	            user.setAddr(rs.getString("addr"));
	            user.setRegip(rs.getString("regip"));
	            user.setRegdate(rs.getString("regDate"));
	            user.setIsAdmin(rs.getInt("isAdmin"));
	            
	            users.add(user);
	        }
	        closeAll();
	    } catch (Exception e) {
	        logger.error("selectUsers Exception", e);
	    }
	    
	    return users;
	}
	public void updateUser(UserDTO dto) {}
	public void deleteUser(String uid) {}
}
