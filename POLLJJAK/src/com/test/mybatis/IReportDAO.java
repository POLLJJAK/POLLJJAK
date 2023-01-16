/*===================
  IReportPostDAO.java
===================== */

package com.test.mybatis;


import com.test.dto.ReportDTO;


public interface IReportDAO
{
	// 게시글 신고
	public int reportPostAdd(ReportDTO dto);
}
