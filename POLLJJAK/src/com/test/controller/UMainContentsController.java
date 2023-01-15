package com.test.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.UMainContentsDTO;
import com.test.mybatis.IProjectOpenDAO;
import com.test.mybatis.IUMainContentsDAO;


@Controller
public class UMainContentsController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	// 신규 프로젝트 정보 조회
	@RequestMapping(value = "/umaincontents.action", method = RequestMethod.GET)
	public String getNewProject(Model model, HttpServletRequest request) 
	{
		
		IUMainContentsDAO dao = sqlSession.getMapper(IUMainContentsDAO.class);

		UMainContentsDTO dto = new UMainContentsDTO();
		
		List<Map<String, Object>> NewProjectList = new ArrayList<Map<String, Object>>();
		
		/*
		for (int i = 0; i < .length; i++) {
			
		}
		
		NewProjectList.put("p_code", dao);
		NewProjectList.put("p_name", "test1");
		NewProjectList.put("u_name", "1111");
		NewProjectList.put("skill_part", "010-1111-1111");
		NewProjectList.put("p_file", "대전 서구 탄방동");
		listMap.add(NewProjectList);
				
		dao.getNewProject()
		
		//model.addAttribute("newProject", dao.getNewProject());
		 */
	
		String result = "{" + "키" + ":" + "밸류" + "}";
		return result;
		
	}
	
	
	
	
	
	 
	
	

}