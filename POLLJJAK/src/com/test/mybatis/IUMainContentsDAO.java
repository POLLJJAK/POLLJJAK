package com.test.mybatis;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.test.dto.ProjectDetailDTO;

public interface IUMainContentsDAO {
	
	// 신규 프로젝트 조회
	public List<Map<String, Object>> getNewProject();
	
	

	

}
