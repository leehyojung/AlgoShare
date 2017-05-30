package com.skuniv.project.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.skuniv.project.dao.CodeDao;

@Service("CodeService")
public class CodeService {
	@Resource(name = "CodeDao")
	private CodeDao dao;

	public Object good() {
		// TODO Auto-generated method stub
		return "hyo";
	}

	public String selectCode() throws Exception {
		return dao.selectCode();
	}
	public void updateCode(Map<String, Object> map) {
		dao.updateCode(map);
	}
}
