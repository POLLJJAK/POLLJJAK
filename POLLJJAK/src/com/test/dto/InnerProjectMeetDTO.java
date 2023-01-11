package com.test.dto;

import java.util.Date;

import com.test.mybatis.Time;

public class InnerProjectMeetDTO
{
	private String ph_meet_title, ph_meet_subtitle;
	private String ph_meet_writer;
	private String meet_start_date, meet_end_date, ph_meet_content, ph_meet_date, meet_update_date, meet_date;
	private String ph_meet_code;
	private String u_p_apply_code;
	private String upa_code, insert_member;
	private String summernote;

	
	//페이징
	private String meet_sid;
	private String start, end;
	
	public String getMeet_sid()
	{
		return meet_sid;
	}

	public void setMeet_sid(String meet_sid)
	{
		this.meet_sid = meet_sid;
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

	public String getUpa_code()
	{
		return upa_code;
	}

	public void setUpa_code(String upa_code)
	{
		this.upa_code = upa_code;
	}

	public String getU_p_apply_code()
	{
		return u_p_apply_code;
	}

	public void setU_p_apply_code(String u_p_apply_code)
	{
		this.u_p_apply_code = u_p_apply_code;
	}

	public String getSummernote()
	{
		return summernote;
	}

	public void setSummernote(String summernote)
	{
		this.summernote = summernote;
	}

	public String getInsert_member()
	{
		return insert_member;
	}

	public void setInsert_member(String insert_member)
	{
		this.insert_member = insert_member;
	}

	public String getPh_meet_code()
	{
		return ph_meet_code;
	}

	public void setPh_meet_code(String ph_meet_code)
	{
		this.ph_meet_code = ph_meet_code;
	}

	public String getPh_meet_title()
	{
		return ph_meet_title;
	}

	public void setPh_meet_title(String ph_meet_title)
	{
		this.ph_meet_title = ph_meet_title;
	}

	public String getPh_meet_subtitle()
	{
		return ph_meet_subtitle;
	}

	public void setPh_meet_subtitle(String ph_meet_subtitle)
	{
		this.ph_meet_subtitle = ph_meet_subtitle;
	}

	public String getPh_meet_writer()
	{
		return ph_meet_writer;
	}

	public void setPh_meet_writer(String ph_meet_writer)
	{
		this.ph_meet_writer = ph_meet_writer;
	}

	public String getMeet_start_date()
	{
		return meet_start_date;
	}

	public void setMeet_start_date(String meet_start_date)
	{
		this.meet_start_date = meet_start_date;
	}

	public String getMeet_end_date()
	{
		return meet_end_date;
	}

	public void setMeet_end_date(String meet_end_date)
	{
		this.meet_end_date = meet_end_date;
	}

	public String getPh_meet_content()
	{
		return ph_meet_content;
	}

	public void setPh_meet_content(String ph_meet_content)
	{
		this.ph_meet_content = ph_meet_content;
	}

	public String getPh_meet_date()
	{
		return ph_meet_date;
	}

	public void setPh_meet_date(String ph_meet_date)
	{
		this.ph_meet_date = ph_meet_date;
	}

	public String getMeet_update_date()
	{
		return meet_update_date;
	}

	public void setMeet_update_date(String meet_update_date)
	{
		this.meet_update_date = meet_update_date;
	}

	
	
	public String getMeet_date()
	{
		return meet_date;
	}

	public void setMeet_date(Date meet_date)
	{
		this.meet_date = Time.calculateTime(meet_date);
	}
	
	
}
