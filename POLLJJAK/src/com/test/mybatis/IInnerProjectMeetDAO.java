package com.test.mybatis;

import java.util.ArrayList;
import java.util.List;

import com.test.dto.InnerProjectMeetDTO;

public interface IInnerProjectMeetDAO
{
	public ArrayList<InnerProjectMeetDTO> meetBoardList(String u_p_apply_code);
	public ArrayList<InnerProjectMeetDTO> meetInsertForm_memberlist(String u_p_apply_code);
	
	public int meetInsert(InnerProjectMeetDTO meetPostDto);
	public int meetMemberInsert(List<String> members);
	
}
