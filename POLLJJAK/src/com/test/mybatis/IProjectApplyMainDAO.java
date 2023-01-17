package com.test.mybatis;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.test.dto.ProjectOpenDTO;

public interface IProjectApplyMainDAO {
	
	// 전체 프로젝트 조회
	public List<Map<String, Object>> allProjectList(Map<String, Object> param);
	
}

