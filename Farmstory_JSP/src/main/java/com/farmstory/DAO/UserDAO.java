package com.farmstory.DAO;

import com.farmstory.Util.DBHelper;

public class UserDAO extends DBHelper {
	
	private static UserDAO instance = new UserDAO();
	
	public static UserDAO getInstance() {
		return instance;
	}
	
	private UserDAO () {}
	
	
	private void insertUser() {}
	private void selectUser() {}
	private void selectUsers() {}
	private void updateUser() {}
	private void deleteUser() {}
	
	
	
}
