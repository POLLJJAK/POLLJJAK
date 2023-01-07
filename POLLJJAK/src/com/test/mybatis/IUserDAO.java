/*====================
 	IUserDAO.java
 	- 일반회원
=====================*/

package com.test.mybatis;

import java.util.ArrayList;

public interface IUserDAO
{
	// 회원 정보 입력(추가)
	public Integer add(UserDTO u);
		
	// 회원정보 확인(u_code 를 활용하여 회원 정보 검색)
	public UserDTO search(UserDTO dto);
	
	// 회원 정보 수정
	public int update(UserDTO dto);
	
	// 도메인 출력
	public ArrayList<DomainDTO> domainList();
	
	// 주요직무 출력
	public ArrayList<PositionDTO> positionList();
	
	// 모임 선호 지역 출력
	public ArrayList<RegionDTO> regionList();
	
	// 모임 선호 시간 출력
	public ArrayList<TimeDTO> timeList();

	// 관심분야 출력
	public ArrayList<SubjectDTO> subjectList();
	
	// 주요기술 출력
	public ArrayList<SkillDTO> skillList();
	
}
