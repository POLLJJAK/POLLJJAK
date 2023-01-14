/*====================
 	ICompanyDAO.java
 	- 기업회원
=====================*/

package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.CompanyDTO;
import com.test.dto.DomainDTO;
import com.test.dto.UserDTO;

public interface ICompanyDAO
{
	// 기업회원 정보 입력(추가)
	public Integer add(CompanyDTO u);
	
	// 아이디 중복
	public int idCheck(String id);
		
	// 도메인 출력
	public ArrayList<DomainDTO> domainList();

	// 마이페이지 입장 전 회원 정보 띄우기
	public CompanyDTO cWarning(CompanyDTO dto);
	
	// 마이페이지 입장 전 비밀번호 체크
	public int pwCheck(CompanyDTO dto);
	
	// 기업회원 정보 확인(user_code 를 활용하여 회원 정보 검색)
	public CompanyDTO search(CompanyDTO dto);
	
	// 기업회원 정보 수정
	public int update(CompanyDTO dto);
	
}
