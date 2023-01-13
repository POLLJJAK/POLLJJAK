package com.test.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.test.util.MapToJson;

public class MapTojsonControllerSample 
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "~.action", method = RequestMethod.GET, headers = "application/json;charset=utf-8")
	@ResponseBody
	public Map<String, Object> ControllerName (Model model, HttpServletRequest request) 
	{
		// MAP에서 Json으로 (convertToJsonString에 MAP 넘겨줌)
		String jsonString = MapToJson.convertToJsonString(request);
		
		// JSON에서 MAP으로 (convertToMap에 String key:value 넘겨줌 )
		Map<String, Object> param = MapToJson.convertToMap(jsonString, "paramCode");
		
		return param;
		
	}


}
