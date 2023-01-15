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
	public PostCommentDTO addComment(String user_code, String post_code, String content);

	// 대댓글 작성
	public PostCommentDTO addReComment(String user_code, String post_code, String comment_code);
	
	// 댓글 리스트
	//public List<PostCommentDTO> list(String post_code);
	public List<Map<String, Object>> list(Map<String, Object> param);
	//public String list(String post_code);
	//public Map<String, Object> list(String post_code);
	// 댓글 삭제
	public PostCommentDTO removeComment(String comment_code);
	
	// 댓글 수정
	public PostCommentDTO modifyComment(String comment_code, String content);
	
	
	

}
