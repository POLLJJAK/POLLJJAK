package com.test.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.UMainContentsDTO;
import com.test.mybatis.IPostCommentDAO;
import com.test.mybatis.IProjectOpenDAO;
import com.test.mybatis.IUMainContentsDAO;
import com.test.util.MapToJson;


@Controller
public class UMainContentsController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	// 신규 프로젝트 정보 조회
	@RequestMapping(value = "/umaincontents.action", method = RequestMethod.POST)
	public String getNewProject(Model model, HttpServletRequest request) throws JsonGenerationException, JsonMappingException, IOException 
	{
		String result = null;
		
		IUMainContentsDAO dao = sqlSession.getMapper(IUMainContentsDAO.class);

		Map<String, Object> resultMap = new HashMap();
		
		//Map을 파라미터로 모델 호출 & 데이터 Map에 반환 
		//다중 Row의 결과이므로 ListMap에 반환
		List<Map<String, Object>> resultList =  dao.getNewProject();
		
		//resultMap에 저장 & 다시 json스트링으로 변환 
		resultMap.put("resultList", resultList);
		ObjectMapper mapper = new ObjectMapper();
		String resultJsonString = mapper.writeValueAsString(resultMap);
		
		//ajax페이지에 전달
		model.addAttribute("result", resultJsonString);
		result = "/AjaxResult.jsp";	
		
		return result;
		
	}
	

}