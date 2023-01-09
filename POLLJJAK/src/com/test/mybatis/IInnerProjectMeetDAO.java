package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.InnerProjectMeetDTO;

public interface IInnerProjectMeetDAO
{
	public ArrayList<InnerProjectMeetDTO> meetBoardList(String u_p_apply_code);
	
}
