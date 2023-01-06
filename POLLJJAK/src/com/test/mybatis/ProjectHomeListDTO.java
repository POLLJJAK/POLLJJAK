/*
 * ProjectHomeListDTO.java 
 * 내 프로젝트 홈
 * 진행 프로젝트, 완료 프로젝트 목록
 * 
 */

package com.test.mybatis;

public class ProjectHomeListDTO
{
	private String p_name, user_code, pj_start_date, pj_end_date;
	private int all_subwork, complete_subwork;
	
	
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
	public int getAll_subwork()
	{
		return all_subwork;
	}
	public void setAll_subwork(int all_subwork)
	{
		this.all_subwork = all_subwork;
	}
	public int getComplete_subwork()
	{
		return complete_subwork;
	}
	public void setComplete_subwork(int complete_subwork)
	{
		this.complete_subwork = complete_subwork;
	}

	
	
	
	
	
}
