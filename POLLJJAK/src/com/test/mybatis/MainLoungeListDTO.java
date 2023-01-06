/*=============================
	ProjectHomeListDTO.java 
 	- 메인라운지 자유게시판
=============================== */

package com.test.mybatis;

public class MainLoungeListDTO
{
	//SID, TITLE, CONTENT, NICKNAME, POSTDATE, POSTLIKE
	private String sid, title, content, nickname, postDate, postLike;

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
	
	
	
	
	
	
	
}
