/*=========================
 	GradeController.java
==========================*/

package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.test.dto.ProjectOpenDTO;
import com.test.mybatis.IProjectOpenDAO;
import com.test.util.FileManager;



@Controller
public class ProjectOpenController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	// 완료 팀장 프로젝트 개수 조회
	@RequestMapping(value="/projectopen.action", method = RequestMethod.GET)
	public String searchLevel(Model model, HttpServletRequest request) 
	{
		String user_code = request.getParameter("user_code");
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
		
			IProjectOpenDAO dao = sqlSession.getMapper(IProjectOpenDAO.class);
			
			model.addAttribute("levelInfo", dao.searchLevel(user_code));
			model.addAttribute("user_code", user_code);
			
			result ="/ProjectOpen.jsp";
		}
		
		return result;
	}
	
	// 프로젝트 등록 및 파일 업로드 
	// 프로젝트 이미지 파일업로드 테스트
	// 멀티 파트로 넘기는 경우에는 자동으로  DTO 주입 X 각자 개별적으로 주입 필요
	@RequestMapping(value="/createproject.action", method=RequestMethod.POST)
	public String createProject(HttpServletRequest request, Model model) throws IllegalStateException, IOException
	{
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
	
		
			// 추후 세션처리 예정
			ProjectOpenDTO opendto = new ProjectOpenDTO();
			IProjectOpenDAO dao = sqlSession.getMapper(IProjectOpenDAO.class);
			
			// 이미지 파일 업로드 변수
			MultipartRequest m = FileManager.upload(request, "upload\\project");
			
			// 직무, 직무 인원 배열
			String[] position = m.getParameterValues("position");
			String[] positionCount = m.getParameterValues("count");
			
			
			String user_code = m.getParameter("user_code");
			
			// 파라미터 체크
			/*
			System.out.println(user_code);
			
			
			System.out.println(m.getParameter("p_name"));
			System.out.println(m.getParameter("subject"));
			System.out.println(m.getParameter("detail"));
		    //System.out.println(fileNames.get(0));
			System.out.println(m.getParameter("time"));
			System.out.println(m.getParameter("region_part"));
			for (int i = 0; i < position.length; i++) {
				System.out.println(position[i]);
			}
			for (int i = 0; i < positionCount.length; i++) {
				System.out.println(positionCount[i]);
			}
			System.out.println(m.getParameter("platform"));
			System.out.println(m.getParameter("description"));
			System.out.println(m.getParameter("persnal-skill"));
			System.out.println(m.getParameter("deadLine"));
			System.out.println(m.getParameter("startDate"));
			System.out.println(m.getParameter("endDate"));
			System.out.println(m.getParameter("reference"));
			*/
			
			//프로젝트 등록 DTO 세팅
			
			opendto.setUser_code(user_code);
			opendto.setP_name(m.getParameter("p_name"));
			opendto.setSubject_part_code(m.getParameter("subject"));
			opendto.setDepartment_part_code(m.getParameter("detail"));
			opendto.setTime_part_code(m.getParameter("time"));
			opendto.setRegion_part_code(m.getParameter("region_part"));
			opendto.setPosition_part(position);
			opendto.setPosition_part_count(positionCount);
			opendto.setPlatform_part_code(m.getParameter("platform"));
			opendto.setP_info_content(m.getParameter("description"));
			opendto.setSkill_part_code(m.getParameter("persnal-skill"));
			opendto.setP_end_date(m.getParameter("deadLine"));
			opendto.setPj_start_date(m.getParameter("startDate"));
			opendto.setPj_end_date(m.getParameter("endDate"));
			opendto.setP_info_refo(m.getParameter("reference"));
			
			dao.openProject(opendto);
			
			if(opendto.getP_code() == null)
			{
				return "에러";
			}
			
			// 인서트한 p_code키 값 잘 뽑아옴
			//System.out.println(opendto.getP_code());
			
			// 가져온거 이제 DB에 넣으면 됨
			ArrayList<String> fileNames = FileManager.getFileNames(m); //파일 이름
			
			// 첨부 파일이 있다면
			if(!fileNames.isEmpty())
			{
				// 파일이름 셋
				opendto.setP_file_name(fileNames.get(0));
				// 서버 경로 셋
				opendto.setP_file_path(request.getServletContext().getRealPath("upload\\project"));
				// 파일 사이즈 셋
				opendto.setP_file_size("1024*1024*100");
				
				dao.insertFileImage(opendto);
				
			}
			
			String leaderPosition = "";
			
			// 프로젝트 직무 넘김
			for(int i = 0; i < position.length; i++) {
				Map<String, Object> positionMap = new HashMap<String, Object>();
				positionMap.put("p_code", opendto.getP_code());
				positionMap.put("position_part", opendto.getPosition_part()[i]);
				positionMap.put("position_part_count", opendto.getPosition_part_count()[i]);
				dao.insertPosition(positionMap);
				if(i == 0)
				{
					System.out.println(positionMap.get("P_POSITION_CODE"));
					leaderPosition = (String) positionMap.get("P_POSITION_CODE");
				}
				
			}
			// opendto의 p_position_code 에 해당 리더 포지션 코드 담기
			opendto.setP_position_code(leaderPosition);
			System.out.println(opendto.getP_position_code());
			
			// 프로젝트 등록이 성공적으로 완료 되었다면(DB 상 문제가 없다면)
			if(leaderPosition == null)
			{
				return "에러";
			}
			
			dao.applyProject(opendto);
			System.out.println(opendto.getU_p_apply_code());
			
			if(opendto.getU_p_apply_code() == null)
			{
				return "에러";
			}
			
			dao.addLeaderPermission(opendto);
			
			result =  "redirect:projectDetail.action?p_code="+opendto.getP_code();
		}
        
		return result;
	}
}



