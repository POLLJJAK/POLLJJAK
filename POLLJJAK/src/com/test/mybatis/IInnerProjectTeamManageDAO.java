package com.test.mybatis;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.test.dto.InnerProjectTeamManageDTO;

public interface IInnerProjectTeamManageDAO
{
	public InnerProjectTeamManageDTO pj_title_info(String u_p_apply_code);
	public ArrayList<InnerProjectTeamManageDTO> pj_team_info(String u_p_apply_code);
	public int pj_team_count(String u_p_apply_code);	
	
	public int pj_team_now_count(String u_p_apply_code);
	public InnerProjectTeamManageDTO upa_p_code(String u_p_apply_code);
	
	public InnerProjectTeamManageDTO pj_team_leader(String u_p_apply_code);
	
	
	public int p_stop_teamMember(String u_p_apply_code);
	
	public List<Map<String, String>> p_stop_teamMember_check(String u_p_apply_code);
	
	public InnerProjectTeamManageDTO p_stop_upa_check(String u_p_apply_code);
	
	public int p_stop_teamMember_count(String u_p_apply_code);
	
	
	public InnerProjectTeamManageDTO p_team_confirm_code(String u_p_apply_code);
	
	public int p_stop_project_insert(InnerProjectTeamManageDTO dto);
}
