package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class InnerProjectHomeTeamManageController
{
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/inner-project-home-teammanage.action", method=RequestMethod.GET)
	public String innerProjectHomeTitleView(ModelMap model, @RequestParam("u_p_apply_code") String u_p_apply_code) {
		
		String result = null;
		
		model.addAttribute("u_p_apply_code", u_p_apply_code);
		
		IInnerProjectTeamManageDAO dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
		
		model.addAttribute("pj_title_info", dao.pj_title_info(u_p_apply_code));
		
		model.addAttribute("pj_team_info", dao.pj_team_info(u_p_apply_code));
		
		model.addAttribute("pj_team_count", dao.pj_team_count(u_p_apply_code));
		
		result = "/Inner-Project-home-teamManage.jsp";
		
		return result;
	}
	
	
}
