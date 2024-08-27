package com.farmstory.DAO;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DTO.TermsDTO;
import com.farmstory.Util.DBHelper;
import com.farmstory.Util.SQL;

public class TermsDAO extends DBHelper {

	private static TermsDAO instance = new TermsDAO();
	public static TermsDAO getInstance() {
		return instance;
	}
	private TermsDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	public void insertTerms(TermsDTO dto) {
		
	}
	public TermsDTO selectTerms() {
		
		TermsDTO dto = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL.SELECT_TERMS);
			
			if(rs.next()) {
				dto = new TermsDTO();
				dto.setTerm_id(rs.getInt(1));
				dto.setTerm_content1(rs.getString(2));
				dto.setTerm_content2(rs.getString(3));
			}
			closeAll();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dto;
	}
	public List<TermsDTO> selectTermses() {
		try {
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public void updateTerms(TermsDTO dto) {}
	public void deleteTerms() {}
	
}
