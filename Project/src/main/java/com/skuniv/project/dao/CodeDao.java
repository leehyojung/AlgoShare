package com.skuniv.project.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.skuniv.project.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("CodeDao")
public class CodeDao extends abDAO {
	public String selectCode() {
		return selectList("code.selectCode").toString();
	}
	public void updateCode(Map<String, Object> map) {
		update("code.updateCode", map);
	}
}
