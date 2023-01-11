/*====================
 	CompanyDTO.java
 	- 기업 유저
=====================*/

package com.test.dto;

public class CompanyDTO
{
	// 주요 속성 구성
	private String c_code, user_code, domain_part_code;
	private String c_business_number, c_intro, c_ideal, c_project;
	private String c_position, c_company_name;
	private String id, pw, email, name;
	
	// getter / setter
	public String getC_code()
	{
		return c_code;
	}
	public void setC_code(String c_code)
	{
		this.c_code = c_code;
	}
	public String getUser_code()
	{
		return user_code;
	}
	public void setUser_code(String user_code)
	{
		this.user_code = user_code;
	}
	public String getDomain_part_code()
	{
		return domain_part_code;
	}
	public void setDomain_part_code(String domain_part_code)
	{
		this.domain_part_code = domain_part_code;
	}
	public String getC_business_number()
	{
		return c_business_number;
	}
	public void setC_business_number(String c_business_number)
	{
		this.c_business_number = c_business_number;
	}
	public String getC_intro()
	{
		return c_intro;
	}
	public void setC_intro(String c_intro)
	{
		this.c_intro = c_intro;
	}
	public String getC_ideal()
	{
		return c_ideal;
	}
	public void setC_ideal(String c_ideal)
	{
		this.c_ideal = c_ideal;
	}
	public String getC_project()
	{
		return c_project;
	}
	public void setC_project(String c_project)
	{
		this.c_project = c_project;
	}
	public String getC_position()
	{
		return c_position;
	}
	public void setC_position(String c_position)
	{
		this.c_position = c_position;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getPw()
	{
		return pw;
	}
	public void setPw(String pw)
	{
		this.pw = pw;
	}
	public String getC_company_name()
	{
		return c_company_name;
	}
	public void setC_company_name(String c_company_name)
	{
		this.c_company_name = c_company_name;
	}
	
	
	
}
