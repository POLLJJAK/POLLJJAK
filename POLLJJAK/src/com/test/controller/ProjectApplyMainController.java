package com.test.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.mybatis.IProjectApplyMainDAO;
import com.test.util.MapToJson;


@Controller
public class ProjectApplyMainController {
	
	@Autowired
	private SqlSession sqlSession;
   
   
	@RequestMapping(value = "/projectapplymain.action")
	public String commentList(HttpServletRequest request, Model model) throws JsonGenerationException, JsonMappingException, IOException 
	{
		String result = null;
			
		String jsonString = MapToJson.convertToJsonString(request);
		Map<String, Object> param = MapToJson.convertToMap(jsonString, "paramCode");
		Map<String, Object> resultMap = new HashMap();
		   
		IProjectApplyMainDAO dao = sqlSession.getMapper(IProjectApplyMainDAO.class);
		List<Map<String, Object>> resultList =  dao.allProjectList(param);
		  
		resultMap.put("resultList", resultList);
		ObjectMapper mapper = new ObjectMapper();
		String aaa = mapper.writeValueAsString(resultMap);
		
		model.addAttribute("result", aaa);
		result = "/AjaxResult.jsp";	
		
		return result;
	}

}
