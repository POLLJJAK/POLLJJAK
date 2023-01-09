package com.test.mybatis;

import java.util.ArrayList;
import java.util.List;

import com.test.dto.InnerProjectMeetDTO;

public interface IInnerProjectMeetDAO
{
	public ArrayList<InnerProjectMeetDTO> meetBoardList(InnerProjectMeetDTO dto);
	public ArrayList<InnerProjectMeetDTO> meetInsertForm_memberlist(String u_p_apply_code);
	
	// 회의록 작성
	public int meetInsert(InnerProjectMeetDTO meetDto);
	
	// 회의록 작성할 때 팀원 체크 박스 출력
	public int meetMemberInsert(List<String> members);
	
	// 회의록 보기
	public InnerProjectMeetDTO meetBoardPost(String ph_meet_code);
	
	// 회의록 참여 팀원
	public ArrayList<InnerProjectMeetDTO> meetMemberList(String ph_meet_code);
	
	// 회의록 수정
	public int meetUpdate(InnerProjectMeetDTO meetDto);
	
	// 회의록 삭제
	public int meetRemove(String ph_meet_code);
	
	// 회의록 총 갯수
	public int meetListCount(String u_p_apply_code);
	
}
