package com.test.mybatis;

import java.util.List;
import java.util.Map;

import com.test.dto.InnerProjectTodoDTO;


public interface IInnerProjectTodoDAO
{
	public List<Map<String, Object>> calenList(String u_p_apply_code);
	public int todoInsert(InnerProjectTodoDTO dto);
}
