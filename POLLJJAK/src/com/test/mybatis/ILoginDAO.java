package com.test.mybatis;

import com.test.dto.UserDTO;

public interface ILoginDAO
{
	// 회원정보를 통해 로그인
	public UserDTO login(UserDTO dto);
}
