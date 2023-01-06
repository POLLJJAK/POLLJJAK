/*
 * ProjectHomeListDTO.java 
 * 내 프로젝트 홈
 * 진행 프로젝트, 완료 프로젝트 목록
 * 
 */

package com.test.mybatis;

import java.util.ArrayList;

public interface IProjectHomeListDAO
{
	public ArrayList<ProjectHomeListDTO> list(String user_code);
}
