package com.test.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.dto.InnerProjectTodoDTO;
import com.test.mybatis.IInnerProjectTeamManageDAO;
import com.test.mybatis.IInnerProjectTodoDAO;

@Controller
public class IInnerProjectTodoController
{
	@Autowired
	SqlSession sqlSession;
	

	
	// 회의록 클릭 시 초기 화면 
	@RequestMapping(value="/inner-project-home-todo.action", method=RequestMethod.GET)
	public String todoCalendar(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code) 
	{
		String result = null;
		
		model.addAttribute("u_p_apply_code", u_p_apply_code);

		// 프로젝트 타이틀 불러오기
		IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
		
		model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
		
		result = "WEB-INF/view/Inner-Project-home-todo.jsp";
		
		return result;
	}
	
	
	// 달력 ajax 데이터 불러오기
	@ResponseBody
	@RequestMapping(value="/calendar.action", method=RequestMethod.GET)
	public String todoDataView(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code) 
	{
		model.addAttribute("u_p_apply_code", u_p_apply_code);
		
		IInnerProjectTodoDAO tdm = sqlSession.getMapper(IInnerProjectTodoDAO.class);
		
		List<Map<String, Object>> list  = tdm.calenList(u_p_apply_code);
		
		JSONArray jsonArray = new JSONArray();
		
		for(Map<String, Object> map : list) {
			jsonArray.add(convertMapToJson(map));
		}
		
		System.out.println(jsonArray);

	
		return jsonArray.toString();
	}
	
	@SuppressWarnings({ "unchecked" })
	public static JSONObject convertMapToJson(Map<String, Object> map) {
		
		JSONObject json = new JSONObject();
		
		for(Map.Entry<String, Object> entry : map.entrySet()) {
			String key = entry.getKey();
			Object value = entry.getValue();
			json.put(key, value);
		}
		
		return json;
	}
	
	
	
	
	@RequestMapping(value="/insertTodo.action", method=RequestMethod.POST)
	public String todoInsert(Model model
			, @RequestParam("todoTitle") String todoTitle
			, @RequestParam("todoPartCode") String todoPartCode
			, @RequestParam("start_date") String todoStartDate
			, @RequestParam("end_date") String todoEndDate
			, @RequestParam("u_p_apply_code") String u_p_apply_code) 
	{
		model.addAttribute("u_p_apply_code", u_p_apply_code);
		
		
		IInnerProjectTodoDAO dao = sqlSession.getMapper(IInnerProjectTodoDAO.class);

		todoStartDate = todoStartDate.replaceAll("\\.", "-");
		todoEndDate = todoEndDate.replaceAll("\\.", "-");
		
		InnerProjectTodoDTO dto = new InnerProjectTodoDTO();
		dto.setTodoTitle(todoTitle);
		dto.setTodoPartCode(todoPartCode);
		dto.setTodoStartDate(todoStartDate);
		dto.setTodoEndDate(todoEndDate);
		dto.setU_p_apply_code(u_p_apply_code);
		
		dao.todoInsert(dto);
		
		return "redirect:inner-project-home-todo.action";
	}
	

	
}
