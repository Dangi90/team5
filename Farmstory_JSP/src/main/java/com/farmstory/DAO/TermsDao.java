package com.farmstory.DAO;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DTO.TermsDto;
import com.farmstory.Util.DBHelper;
import com.farmstory.Util.SQL;

public class TermsDao extends DBHelper {

	private static TermsDao instance = new TermsDao();
	public static TermsDao getInstance() {
		return instance;
	}
	private TermsDao() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	public void insertTerms(TermsDto dto) {
		
	}
	public TermsDto selectTerms() {
		
		TermsDto dto = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL.SELECT_TERMS);
			
			if(rs.next()) {
				dto = new TermsDto();
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
	public List<TermsDto> selectTermses() {
		try {
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public void updateTerms(TermsDto dto) {}
	public void deleteTerms() {}
	
}
