package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.ProjectDetailNewsDTO;

public interface IProjectDetailNewsDAO
{
	// 프로젝트 상세보기 소식 가져오기
	public ArrayList<ProjectDetailNewsDTO> p_news_list(String p_code);
}
