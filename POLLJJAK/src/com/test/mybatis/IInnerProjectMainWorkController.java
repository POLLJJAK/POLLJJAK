package com.test.mybatis;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IInnerProjectMainWorkController
{

	@Autowired
	SqlSession sqlSession;
	
	
	@RequestMapping(value="/inner-project-home-mainwork.action", method=RequestMethod.GET)
	public String mainWorklist(ModelMap model, @RequestParam("u_p_apply_code") String u_p_apply_code) {
		
		String result = null;
		
		model.addAttribute("u_p_apply_code", u_p_apply_code);

		// 프로젝트 타이틀 불러오기
		IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
		model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));

		
		IInnerProjectMainWorkDAO dao = sqlSession.getMapper(IInnerProjectMainWorkDAO.class);
		
		
		
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("u_p_apply_code", u_p_apply_code);
		map.put("ph_mainwork_code", "PHMW0000001");

		
		model.addAttribute("pj_mainwork_list", dao.pj_mainwork_list(u_p_apply_code));
		model.addAttribute("pj_mainwork_list_member", dao.pj_mainwork_list_member(map));
		
		result = "/Inner-Project-home-mainWork.jsp";
		
		return result;
	}
	
}
