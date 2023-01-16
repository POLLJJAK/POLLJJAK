/*====================
 ReportDTO 
 - 자유게시판 신고
======================*/

package com.test.dto;

public class ReportDTO
{
	private String report_post_code, post_code, user_code, reportDate, complete;
	
	// 신고사유, 코드
	private String report_reason_code, report_reason;
	
	// 관리자 코드 
	private String a_code;
	
	// 처분 유형 코드
	private String warned_part_code;

	public String getReport_post_code()
	{
		return report_post_code;
	}

	public void setReport_post_code(String report_post_code)
	{
		this.report_post_code = report_post_code;
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

	public String getReportDate()
	{
		return reportDate;
	}

	public void setReportDate(String reportDate)
	{
		this.reportDate = reportDate;
	}

	public String getComplete()
	{
		return complete;
	}

	public void setComplete(String complete)
	{
		this.complete = complete;
	}

	public String getReport_reason_code()
	{
		return report_reason_code;
	}

	public void setReport_reason_code(String report_reason_code)
	{
		this.report_reason_code = report_reason_code;
	}

	public String getA_code()
	{
		return a_code;
	}

	public void setA_code(String a_code)
	{
		this.a_code = a_code;
	}

	public String getWarned_part_code()
	{
		return warned_part_code;
	}

	public void setWarned_part_code(String warned_part_code)
	{
		this.warned_part_code = warned_part_code;
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
