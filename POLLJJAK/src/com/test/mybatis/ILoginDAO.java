package com.test.mybatis;

import java.util.ArrayList;

import com.test.dto.CompanyDTO;
import com.test.dto.DomainDTO;
import com.test.dto.UserDTO;

public interface ILoginDAO
{
	// 공통
	// 도메인 출력
	public ArrayList<DomainDTO> domainList();
	
	// 일반
	// 회원정보를 통해 로그인
	public UserDTO userLogin(UserDTO dto);
	
	// 회원정보를 통해 아이디 / 비밀번호 찾기
	public UserDTO uForgetId(UserDTO dto);
	public UserDTO uForgetPw(UserDTO dto);
	
	// 비번 수정
	public int uModifyPW(UserDTO dto);

	
	// 기업
	// 회원정보를 통해 로그인
	public CompanyDTO companyLogin(CompanyDTO dto);
	
	// 회원정보를 통해 아이디 / 비밀번호 찾기
	public CompanyDTO cForgetId(CompanyDTO dto);
	public CompanyDTO cForgetPw(CompanyDTO dto);
	
	// 비번 수정
	public int cModifyPW(CompanyDTO dto);
	
}
