/*==============================
	IMainLoungeListDAO.java
 ===============================*/

package com.test.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.test.dto.MainLoungeListDTO;

public interface IMainLoungeListDAO
{
	// 자유게시만 글 목록
	public ArrayList<MainLoungeListDTO> list(MainLoungeListDTO dto);
	
	// 글작성Form
	public String loungeInsertForm();
	
	// 글작성insert
	public int add(MainLoungeListDTO lounge);
	
	// 글 수정
	public int update(MainLoungeListDTO dto);
	
	// 글 삭제
	public int remove(String post_code);
	
	// 게시판 총 갯수
	public int listCount();
	
	// post_code로 글찾기
	public MainLoungeListDTO postdetail(String post_code);
	
	// 좋아요체크
	// 2개라못찾는다고 @Param추가
	//public String likecheck(String post_code, String user_code);
	public String likecheck(@Param("post_code") String post_code,@Param("user_code") String user_code);
	
	// 좋아요추가
	public int likeadd(@Param("post_code") String post_code,@Param("user_code") String user_code);
	
	// 좋아요삭제
	public int likeremove(String user_code);
	
}
