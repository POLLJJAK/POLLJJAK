package com.test.mybatis;

public interface ILoginDAO
{
	// 회원정보를 통해 로그인
	public UserDTO login(UserDTO dto);
}
