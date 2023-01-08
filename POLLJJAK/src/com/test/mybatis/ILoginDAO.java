package com.test.mybatis;

import com.test.dto.CompanyDTO;
import com.test.dto.UserDTO;

public interface ILoginDAO
{
	// 회원정보를 통해 로그인
	// 일반
	public UserDTO userLogin(UserDTO dto);
	// 기업
	public CompanyDTO companyLogin(CompanyDTO dto);
	
}
