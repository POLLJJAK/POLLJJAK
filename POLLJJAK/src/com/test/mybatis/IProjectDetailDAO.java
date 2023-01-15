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
	
	// 선택된 프로젝트 리더 정보 조회
	public ArrayList<ProjectDetailDTO> getProjectLeader(String p_code);
	
	// 프로젝트 지원 전 검증(블랙리스트 검증)
	public int getBlackList(ProjectDetailDTO dto);
	
	// 프로젝트 지원 전 검증(프로젝트 진행중 검증)
	public int getProgressProject(ProjectDetailDTO dto);
	
	// 프로젝트 지원 전 검증(개설 및 지원 검증)
	public int getProgressApply(ProjectDetailDTO dto);
	
	// 직무코드 가져오기
	public String getPositionCode(ProjectDetailDTO dto);
	
	// 프로젝트 지원
	public int applyProject(ProjectDetailDTO dto);
	

	

}
