/*==============================
	MainLoungeListController.java
 ===============================*/

package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainLoungeListController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/mainlounge.action", method = RequestMethod.GET)
	public String mainLoungeList(ModelMap model)
	{
		String result = null;
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		model.addAttribute("list", dao.list());
		result = "/Main-Lounge.jsp";
		return result;
	}
}
