/*====================
 	ICompanyDAO.java
 	- 기업회원
=====================*/

package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.CompanyDTO;
import com.test.dto.DomainDTO;

public interface ICompanyDAO
{
	// 기업회원 정보 입력(추가)
	public Integer add(CompanyDTO u);
		
	// 기업회원 정보 확인(u_code 를 활용하여 회원 정보 검색)
	public CompanyDTO search(CompanyDTO dto);
	
	// 기업회원 정보 수정
	public int update(CompanyDTO dto);
	
	// 도메인 출력
	public ArrayList<DomainDTO> domainList();
	
}
