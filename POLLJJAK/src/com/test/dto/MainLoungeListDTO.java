/*=============================
	MainLoungeListDTO.java 
 	- 메인라운지 자유게시판
=============================== */

package com.test.dto;

public class MainLoungeListDTO
{
	//SID, TITLE, CONTENT, NICKNAME, POSTDATE, POSTLIKE
	private String sid, title, content, nickname, postDate, postLike;
	
	private String post_code, user_code, summernote;
	
	private String likecheck;
	
	//페이징
	private String start, end;
	
	// 신고사유, 코드
	private String report_reason_code, report_reason;
	
	//getter / setter
	public String getSid()
	{
		return sid;
	}

	public void setSid(String sid)
	{
		this.sid = sid;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getNickname()
	{
		return nickname;
	}

	public void setNickname(String nickname)
	{
		this.nickname = nickname;
	}

	public String getPostDate()
	{
		return postDate;
	}

	public void setPostDate(String postDate)
	{
		this.postDate = postDate;
	}

	public String getPostLike()
	{
		return postLike;
	}

	public void setPostLike(String postLike)
	{
		this.postLike = postLike;
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

	public String getSummernote()
	{
		return summernote;
	}

	public void setSummernote(String summernote)
	{
		this.summernote = summernote;
	}

	public String getLikecheck()
	{
		return likecheck;
	}

	public void setLikecheck(String likecheck)
	{
		this.likecheck = likecheck;
	}

	public String getStart()
	{
		return start;
	}

	public void setStart(String start)
	{
		this.start = start;
	}

	public String getEnd()
	{
		return end;
	}

	public void setEnd(String end)
	{
		this.end = end;
	}

	public String getReport_reason_code()
	{
		return report_reason_code;
	}

	public void setReport_reason_code(String report_reason_code)
	{
		this.report_reason_code = report_reason_code;
	}

	public String getReport_reason()
	{
		return report_reason;
	}

	public void setReport_reason(String report_reason)
	{
		this.report_reason = report_reason;
	}

	
	
	
	
	
}
