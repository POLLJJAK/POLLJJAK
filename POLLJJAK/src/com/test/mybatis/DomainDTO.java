/*
	DomainDTO.java
	- 도메인(이메일 뒷자리)
*/

package com.test.mybatis;

public class DomainDTO
{
	// 주요 변수 선언
	private String domain_part_code, domain_address, domain_part;

	// getter / setter 선언
	public String getDomain_part_code()
	{
		return domain_part_code;
	}

	public void setDomain_part_code(String domain_part_code)
	{
		this.domain_part_code = domain_part_code;
	}

	public String getDomain_address()
	{
		return domain_address;
	}

	public void setDomain_address(String domain_address)
	{
		this.domain_address = domain_address;
	}

	public String getDomain_part()
	{
		return domain_part;
	}

	public void setDomain_part(String domain_part)
	{
		this.domain_part = domain_part;
	}
}
