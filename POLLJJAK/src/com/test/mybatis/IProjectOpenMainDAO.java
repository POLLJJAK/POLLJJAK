package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.ProjectOpenMainDTO;


public interface IProjectOpenMainDAO {
	
	// 해당 유저의 모집 진행중 프로젝트 
	public ProjectOpenMainDTO getProject(String user_code);
	
	// 해당 유저의 모집 실패 프로젝트
	public ArrayList<ProjectOpenMainDTO> getfailedProject(String user_code);
	
	// 해당 유저의 개설 실패 프로젝트 리스트 삭제
	public int delfailedproject (String p_code);
	

}
