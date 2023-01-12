package com.test.mybatis;

import java.util.List;

import com.test.dto.InnerProjectTodoDTO;


public interface IInnerProjectTodoDAO
{
	List<InnerProjectTodoDTO> tdm(String u_p_apply_code);
}
