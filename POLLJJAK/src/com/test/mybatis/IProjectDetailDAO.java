package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.ProjectDetailDTO;

public interface IProjectDetailDAO {
	
	// 선택된 프로젝트 정보 조회
	public ProjectDetailDTO getProjectDetail(String p_code);
	
	// 선택된 프로젝트 모집 분야 조회
	public ArrayList<ProjectDetailDTO> getProjectPosition(String p_code);
	
	// 선택된 프로젝트 지원자 조회
	public ArrayList<ProjectDetailDTO> getProjectApplicant(String p_code);

	

}
