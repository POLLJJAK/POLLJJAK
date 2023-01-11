package com.test.mybatis;

import java.util.HashMap;
import java.util.Map;

import com.test.dto.ProjectOpenDTO;

public interface IProjectOpenDAO {
	
	// 완료 프로젝트 개수 조회
	public int searchLevel(String user_code);
	
	// 프로젝트 등록(직무, 파일 제외)
	public void openProject(ProjectOpenDTO opendto);
	
	// 프로젝트 직무 등록
	public void insertPosition(Map<String, Object> positionMap);

	// 프로젝트 대표이미지 첨부파일 등록
	public int insertFileImage(ProjectOpenDTO opendto); 

	// 프로젝트 팀장 지원 등록
	public void applyProject(ProjectOpenDTO opendto);
	
	// 프로젝트 팀장 권한 등록
	public int addLeaderPermission(ProjectOpenDTO opendto);

}

