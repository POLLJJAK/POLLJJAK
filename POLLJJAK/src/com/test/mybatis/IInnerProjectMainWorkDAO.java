package com.test.mybatis;

import java.util.ArrayList;
import java.util.Map;

public interface IInnerProjectMainWorkDAO
{
	public ArrayList<InnerProjectMainWorkDTO> pj_mainwork_list(String u_p_apply_code);
	public ArrayList<InnerProjectMainWorkDTO> pj_mainwork_list_member(Map<String, Object> map);
	
}
