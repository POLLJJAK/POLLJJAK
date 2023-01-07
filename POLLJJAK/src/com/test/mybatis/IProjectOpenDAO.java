package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.ProjectOpenDTO;

public interface IProjectOpenDAO {
	
	// 완료 프로젝트 개수 조회
	public int searchLevel(String user_code);
	
	// 프로젝트 등록
	public int openProject(ProjectOpenDTO opendto);	

}
