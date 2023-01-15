package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.ProjectDetailBlacklistDTO;

public interface IProjectDetailBlacklistDAO
{
	// Detail 컨트롤러에서 지원자, 차단자 목록 출력용도
	public ArrayList<ProjectDetailBlacklistDTO> u_p_apply_list(String p_code);
	public ArrayList<ProjectDetailBlacklistDTO> p_reject_list(String p_code);
	
	
	// 지원자를 차단목록으로 인서트
	public int addblacklist(String u_p_apply_code);
	
	// 차단목록에서 제거
	public int deleteblacklist(String u_p_apply_code);
	
	
}
