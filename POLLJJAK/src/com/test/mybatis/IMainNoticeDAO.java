/*==============================
	IMainNoticeDAO.java
 ===============================*/

package com.test.mybatis;

import java.util.ArrayList;


import com.test.dto.MainNoticeDTO;

public interface IMainNoticeDAO
{
	// 공지사항 글 목록
	public ArrayList<MainNoticeDTO> list(MainNoticeDTO dto);
	
	// 글작성Form
	public String loungeInsertForm();
	
	// 글작성insert
	public int add(MainNoticeDTO notice);
	
	// 글 수정
	public int update(MainNoticeDTO dto);
	
	// 글 삭제
	public int remove(String a_code);
	
	// post_code로 글찾기
	public MainNoticeDTO noticedetail(String notice_code);
	
	// 공지사항 총 갯수
	public int listCount();
	
}
