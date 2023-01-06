/*=========================
 	GradeController.java
==========================*/

package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

// ��Ʈ�ѷ� ���
@Controller
public class ProjectController
{
	// SqlSession �� Ȱ���Ͽ� ���̹�Ƽ�� ��ü ������ (�ڵ�) ����
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value="/pApply.action", method=RequestMethod.POST)
	public String projectCompletelist(ProjectOpenDTO opendto, ProjectPositionDTO positiondto) 
	{
		String result = null;
		
		IProjectOpenDAO opendao = sqlSession.getMapper(IProjectOpenDAO.class);
		
		opendao.openProject(opendto, positiondto);
		
		result ="/ProjectOpen.jsp";
		
		return result;
	};

}


