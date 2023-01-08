/*====================
 	IUserDAO.java
 	- 일반회원
=====================*/

package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.DomainDTO;
import com.test.dto.PositionDTO;
import com.test.dto.RegionDTO;
import com.test.dto.SkillDTO;
import com.test.dto.SubjectDTO;
import com.test.dto.TimeDTO;
import com.test.dto.UserDTO;

public interface IUserDAO
{
	// 일반회원 정보 입력(추가)
	public Integer add(UserDTO u);
		
	// 일반회원 정보 확인(user_code 를 활용하여 회원 정보 검색)
	public UserDTO search(UserDTO dto);
	
	// 일반회원 정보 수정
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
