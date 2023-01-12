/*========================
 	PostCommentDTO.java
 	- 자유게시판 댓글
==========================*/

package com.test.dto;

public class PostCommentDTO
{
	// 주요 속성 구성
	//COMMENT_CODE, POST_CODE, USER_CODE, NICKNAME, CONTENT, COMMENTDATE, COMMENTDATE, CGROUP, CDEPTH
	
	private String comment_code, post_code, user_code, nickname, content, commentdate, commentupdate;
	private String cgroup;			// 부모댓글	→ 원댓이면 null
	private int cdepth;			// 댓글(0) 대댓글(1) 구분
	
	
	  public PostCommentDTO() {}
	  
	  public PostCommentDTO(String comment_code,String post_code,String
	  user_code,String nickname , String content, String commentdate, String
	  commentupdate , String cgroup, int cdepth) { this.comment_code=comment_code;
	  this.post_code=post_code; this.user_code=user_code; this.nickname=nickname;
	  this.content=content; this.commentdate=commentdate;
	  this.commentupdate=commentupdate; this.cgroup=cgroup; this.cdepth=cdepth;
	  
	  }
	 
	// getter / setter 구성
	public String getComment_code()
	{
		return comment_code;
	}
	public void setComment_code(String comment_code)
	{
		this.comment_code = comment_code;
	}
	public String getPost_code()
	{
		return post_code;
	}
	public void setPost_code(String post_code)
	{
		this.post_code = post_code;
	}
	public String getUser_code()
	{
		return user_code;
	}
	public void setUser_code(String user_code)
	{
		this.user_code = user_code;
	}
	public String getNickname()
	{
		return nickname;
	}
	public void setNickname(String nickname)
	{
		this.nickname = nickname;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	public String getCommentdate()
	{
		return commentdate;
	}
	public void setCommentdate(String commentdate)
	{
		this.commentdate = commentdate;
	}
	public String getCommentupdate()
	{
		return commentupdate;
	}
	public void setCommentupdate(String commentupdate)
	{
		this.commentupdate = commentupdate;
	}
	public int getCdepth()
	{
		return cdepth;
	}
	public void setCdepth(int cdepth)
	{
		this.cdepth = cdepth;
	}
	public String getCgroup()
	{
		return cgroup;
	}
	public void setCgroup(String cgroup)
	{
		this.cgroup = cgroup;
	}
	
	
	
	
	
	
	
}
