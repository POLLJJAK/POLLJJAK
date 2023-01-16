package com.test.dto;

public class MyPageProjectListDTO
{
	private String p_name, pj_start_date, pj_end_date;
	
	private String user_code;
	
	private int all_percent;
	private String p_code;
	private String u_p_apply_code;
	
	private String p_end_condition_code;
	
	public String getP_end_condition_code()
	{
		return p_end_condition_code;
	}
	public void setP_end_condition_code(String p_end_condition_code)
	{
		this.p_end_condition_code = p_end_condition_code;
	}
	public String getP_name()
	{
		return p_name;
	}
	public void setP_name(String p_name)
	{
		this.p_name = p_name;
	}
	public String getUser_code()
	{
		return user_code;
	}
	public void setUser_code(String user_code)
	{
		this.user_code = user_code;
	}
	public String getPj_start_date()
	{
		return pj_start_date;
	}
	public void setPj_start_date(String pj_start_date)
	{
		this.pj_start_date = pj_start_date;
	}
	public String getPj_end_date()
	{
		return pj_end_date;
	}
	public void setPj_end_date(String pj_end_date)
	{
		this.pj_end_date = pj_end_date;
	}
	public int getAll_percent()
	{
		return all_percent;
	}
	public void setAll_percent(int all_percent)
	{
		this.all_percent = all_percent;
	}
	public String getP_code()
	{
		return p_code;
	}
	public void setP_code(String p_code)
	{
		this.p_code = p_code;
	}
	public String getU_p_apply_code()
	{
		return u_p_apply_code;
	}
	public void setU_p_apply_code(String u_p_apply_code)
	{
		this.u_p_apply_code = u_p_apply_code;
	}
}
