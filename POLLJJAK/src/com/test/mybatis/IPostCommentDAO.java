/*==============================
	IPostCommentDAO.java
 ===============================*/

package com.test.mybatis;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.test.dto.PostCommentDTO;

public interface IPostCommentDAO {
	
	
	// 댓글 작성
	public int addComment(PostCommentDTO dto);

	// 대댓글 작성
	//public int addReComment(String user_code, String post_code, String comment_code, String content);
	public int addReComment(PostCommentDTO dto);
	
	// 댓글 리스트
	public List<Map<String, Object>> list(Map<String, Object> param);

	// 댓글 삭제
	public int removeComment(String comment_code);
	
	// 댓글 수정
	public int modifyComment(String comment_code, String content);
	
	// 댓글 수
	public int commentCount(String post_code);
	

}
