/*
	SubjectDTO
	- 관심 분야(생활/업무/교통 등)
*/

package com.test.dto;

public class SubjectDTO
{
	private String subject_part_code, subject_part;

	public String getSubject_part_code()
	{
		return subject_part_code;
	}

	public void setSubject_part_code(String subject_part_code)
	{
		this.subject_part_code = subject_part_code;
	}

	public String getSubject_part()
	{
		return subject_part;
	}

	public void setSubject_part(String subject_part)
	{
		this.subject_part = subject_part;
	}
	
	
}
