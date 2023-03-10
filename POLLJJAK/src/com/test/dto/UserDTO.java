/*====================
 	UserDTO.java
 	- 일반 유저
=====================*/

package com.test.dto;

public class UserDTO
{
	// 주요 속성 구성
	private String u_code, user_code, subject_part_code, region_part_code;
	private String position_part_code, time_part_code, domain_part_code;
	private String u_nickname, u_tel, u_intro, u_portfolio_url;
	private String id, pw, email, name;
	// 회원가입 프로시저에 넘기기 위한 주요기술 담을 변수
	private String skill_part_code;
	// 회원가입 프로시저에 넘기기 위한 부가기술 담을 변수
	private String skill_part_code1, skill_part_code2, skill_part_code3;
	// 마이페이지에 넘기기 위한 부가기술들 담을 변수
	private String skill_part_code4;
	
	// getter / setter
	public String getU_code()
	{
		return u_code;
	}
	public void setU_code(String u_code)
	{
		this.u_code = u_code;
	}
	public String getUser_code()
	{
		return user_code;
	}
	public void setUser_code(String user_code)
	{
		this.user_code = user_code;
	}
	public String getSubject_part_code()
	{
		return subject_part_code;
	}
	public void setSubject_part_code(String subject_part_code)
	{
		this.subject_part_code = subject_part_code;
	}
	public String getRegion_part_code()
	{
		return region_part_code;
	}
	public void setRegion_part_code(String region_part_code)
	{
		this.region_part_code = region_part_code;
	}
	public String getPosition_part_code()
	{
		return position_part_code;
	}
	public void setPosition_part_code(String position_part_code)
	{
		this.position_part_code = position_part_code;
	}
	public String getTime_part_code()
	{
		return time_part_code;
	}
	public void setTime_part_code(String time_part_code)
	{
		this.time_part_code = time_part_code;
	}
	public String getDomain_part_code()
	{
		return domain_part_code;
	}
	public void setDomain_part_code(String domain_part_code)
	{
		this.domain_part_code = domain_part_code;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getU_nickname()
	{
		return u_nickname;
	}
	public void setU_nickname(String u_nickname)
	{
		this.u_nickname = u_nickname;
	}
	public String getU_tel()
	{
		return u_tel;
	}
	public void setU_tel(String u_tel)
	{
		this.u_tel = u_tel;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getU_intro()
	{
		return u_intro;
	}
	public void setU_intro(String u_intro)
	{
		this.u_intro = u_intro;
	}
	public String getU_portfolio_url()
	{
		return u_portfolio_url;
	}
	public void setU_portfolio_url(String u_portfolio_url)
	{
		this.u_portfolio_url = u_portfolio_url;
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
	public String getSkill_part_code()
	{
		return skill_part_code;
	}
	public void setSkill_part_code(String skill_part_code)
	{
		this.skill_part_code = skill_part_code;
	}
	public String getSkill_part_code1()
	{
		return skill_part_code1;
	}
	public void setSkill_part_code1(String skill_part_code1)
	{
		this.skill_part_code1 = skill_part_code1;
	}
	public String getSkill_part_code2()
	{
		return skill_part_code2;
	}
	public void setSkill_part_code2(String skill_part_code2)
	{
		this.skill_part_code2 = skill_part_code2;
	}
	public String getSkill_part_code3()
	{
		return skill_part_code3;
	}
	public void setSkill_part_code3(String skill_part_code3)
	{
		this.skill_part_code3 = skill_part_code3;
	}
	public String getSkill_part_code4()
	{
		return skill_part_code4;
	}
	public void setSkill_part_code4(String skill_part_code4)
	{
		this.skill_part_code4 = skill_part_code4;
	}
	
	
}
