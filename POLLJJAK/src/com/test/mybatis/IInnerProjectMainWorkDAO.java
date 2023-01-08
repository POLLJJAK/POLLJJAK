package com.test.mybatis;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.test.dto.InnerProjectMainWorkDTO;

public interface IInnerProjectMainWorkDAO
{
	public ArrayList<InnerProjectMainWorkDTO> pj_mainwork_list(String u_p_apply_code);
	public ArrayList<InnerProjectMainWorkDTO> pj_mainwork_list_member(String u_p_apply_code, String ph_mainwork_code);
	
	public List<Map<String, String>> member_list(String u_p_apply_code);
	
}
