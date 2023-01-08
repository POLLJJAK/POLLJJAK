package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.InnerProjectSubWorkDTO;

public interface IInnerProjectSubWorkDAO
{
	public InnerProjectSubWorkDTO mainwork_title(String ph_mainwork_code);
	public ArrayList<InnerProjectSubWorkDTO> mainwork_team(String ph_mainwork_code);
	public int mainwork_percent(String ph_mainwork_code);
	public ArrayList<InnerProjectSubWorkDTO>subwork_list(String ph_mainwork_code);
	public ArrayList<InnerProjectSubWorkDTO>subwork_teamComment(String ph_mainwork_code);
	
}
