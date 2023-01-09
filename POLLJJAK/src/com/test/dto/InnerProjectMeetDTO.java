package com.test.dto;

import java.util.Date;

import com.test.mybatis.Time;

public class InnerProjectMeetDTO
{
	private String ph_meet_title, ph_meet_subtitle;
	
	private String ph_meet_writer;
	
	private String meet_start_date, meet_end_date, ph_meet_content, ph_meet_date, meet_update_date;
	
	private String meet_date;

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
