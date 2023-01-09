/*=============================
	MainNoticeDTO.java
 	- 메인라운지 공지사항
=============================== */

package com.test.dto;

public class MainNoticeDTO
{
	//NOTICE_CODE  A_CODE  TITLE  CONTENT  NOTICEDATE
	private String sid, notice_code, a_code, title, content, noticedate;
	
	private String summernote;
	
	//페이징
	private String start, end;
	

	public String getSid()
	{
		return sid;
	}

	public void setSid(String sid)
	{
		this.sid = sid;
	}

	public String getNotice_code()
	{
		return notice_code;
	}

	public void setNotice_code(String notice_code)
	{
		this.notice_code = notice_code;
	}

	public String getA_code()
	{
		return a_code;
	}

	public void setA_code(String a_code)
	{
		this.a_code = a_code;
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

	public String getNoticedate()
	{
		return noticedate;
	}

	public void setNoticedate(String noticedate)
	{
		this.noticedate = noticedate;
	}

	public String getSummernote()
	{
		return summernote;
	}

	public void setSummernote(String summernote)
	{
		this.summernote = summernote;
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
	
	
	
	
	
	
	
	
}
