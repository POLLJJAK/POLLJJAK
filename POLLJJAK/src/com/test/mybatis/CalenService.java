package com.test.mybatis;

import java.util.ArrayList;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CalenService
{
	@Autowired(required = false)
	private IInnerProjectTodoDAO dao;
	
	public ArrayList<Calendar> calenList() {
		return dao.calList();
	}
}
