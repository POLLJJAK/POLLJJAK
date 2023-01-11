/*================================
	PostCommetnController.java
==================================*/

package com.test.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.dto.PostCommentDTO;
import com.test.mybatis.IPostCommentDAO;


@Controller
public class PostCommentController
{
	@Autowired
	private SqlSession sqlSession;
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/postcommentlist.action", method =
	 * RequestMethod.POST) public ArrayList<PostCommentDTO> commentList(ModelMap
	 * model, @RequestParam(value = "post_code")String post_code) {
	 * 
	 * 
	 * IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
	 * model.addAttribute("cmtList", dao.list(post_code)); ArrayList<PostCommentDTO>
	 * cmtList = new ArrayList<PostCommentDTO>(); //cmtList = dao.list(post_code);
	 * 
	 * String result = "/Main-Lounge-post.jsp"; return result;
	 * 
	 * }
	 */
	
	@ResponseBody
	@RequestMapping(value = "/postcommentlist.action", method = RequestMethod.POST)
	public ArrayList<PostCommentDTO> commentList(@RequestParam String post_code, HttpSession session)
	{ 
		
		
		
		IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
		List<PostCommentDTO> cmtList = new ArrayList<PostCommentDTO>();
		cmtList = dao.list(post_code);
		
		return (ArrayList<PostCommentDTO>) cmtList;
		
	}
}
