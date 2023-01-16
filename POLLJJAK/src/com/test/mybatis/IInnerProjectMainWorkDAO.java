package com.test.mybatis;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.test.dto.InnerProjectMainWorkDTO;
import com.test.dto.InnerProjectMeetDTO;

public interface IInnerProjectMainWorkDAO
{
	public ArrayList<InnerProjectMainWorkDTO> pj_mainwork_list(String u_p_apply_code);
	public ArrayList<InnerProjectMainWorkDTO> pj_mainwork_list_member(String u_p_apply_code, String ph_mainwork_code);
	
	public List<Map<String, String>> member_list(String u_p_apply_code);
	
	public ArrayList<InnerProjectMainWorkDTO> mainWorkInsertForm_memberlist(String u_p_apply_code);
	
	// 주요 업무 등록 인서트
	public int mainWorkInsert(InnerProjectMainWorkDTO mainWorkDto);
	// 주요 업무 등록 하고 멤버 리스트 인서트
	public int mainWorkMemberInsert(List<String> mainWorkMembers);
	
	
}
