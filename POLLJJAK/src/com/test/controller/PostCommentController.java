/*================================
	PostCommetnController.java
==================================*/

package com.test.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/postcommentlist.action", method
	 * =RequestMethod.POST) public String commentList(@RequestParam("post_code")
	 * String post_code , HttpSession session) {
	 * 
	 * Map<String, Object> map = new HashMap<String, Object>();
	 * 
	 * IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
	 * 
	 * List<PostCommentDTO> list = new ArrayList<PostCommentDTO>();
	 * 
	 * String result = dao.list(post_code);
	 * 
	 * System.out.println(list);
	 * 
	 * 
	 * 
	 * map.put("cmtList", list.get(0));
	 * 
	 * 
	 * return (String)list.get(0);
	 * 
	 * }
	 */
		
	/*
	@ResponseBody
	  @RequestMapping(value = "/postcommentlist.action", method =
	  RequestMethod.POST) 
	  public Map<String, Object> commentList(@RequestParam("post_code") String post_code 
			  				, HttpSession session) 
	  {
	  
		  Map<String, Object> map = new HashMap<String, Object>();
		  
		  IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
		  List<PostCommentDTO> clist = new ArrayList<PostCommentDTO>(); 
		  clist = dao.list(post_code);
		 
		  String comment_code ="";
		  map.put("comment_code", comment_code);
			 
		 
		  
		  System.out.println(map);
		  return map;
	  
	  }
	*/
	/*
	@ResponseBody
	@RequestMapping(value = "/postcommentlist.action", method = RequestMethod.POST) 
	public ArrayList<PostCommentDTO> commentList(@RequestParam("post_code") String post_code 
			, HttpSession session) 
	{
		Map<String, Object> map = new HashMap<String, Object>();
		IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
		
		
		ArrayList<PostCommentDTO> cmtList = new ArrayList<PostCommentDTO>();
		cmtList =  dao.list(post_code);
		
		for (int i = 0; i < cmtList.size(); i++)
		{
			System.out.println(cmtList.get(i).getComment_code());
		}
		
		
		
		return cmtList;
		
		
	}
	*/
	
	//@ResponseBody 
	@RequestMapping(value = "/commentlist.action", method = RequestMethod.POST) 
	public String commentList(@RequestParam("post_code") String post_code 
			, HttpSession session, Model model) 
	{
		String result = "";
		Map<String, Object> map = new HashMap<String, Object>();
		IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
		
		
		ArrayList<PostCommentDTO> cmtList = new ArrayList<PostCommentDTO>();
		cmtList =  dao.list(post_code);
		
		for (int i = 0; i < cmtList.size(); i++)
		{
			map.put("comment_code", cmtList.get(i).getComment_code());
			map.put("post_code", cmtList.get(i).getPost_code());
			map.put("user_code", cmtList.get(i).getUser_code());
			map.put("nickname", cmtList.get(i).getNickname());
			map.put("content", cmtList.get(i).getContent());
			map.put("commentdate", cmtList.get(i).getCommentdate());
			map.put("commentupdate", cmtList.get(i).getCommentupdate());
			map.put("cgroup", cmtList.get(i).getCgroup());
			map.put("cdepth", cmtList.get(i).getCdepth());
			
			//System.out.println(map.values()); 
		}
		
		model.addAttribute("map", map);
		result = "/AjaxCmt.jsp";
		return result;
		
		
	}
	
	/*
	//@ResponseBody 
	@RequestMapping(value = "/commentlist.action", method = RequestMethod.POST) 
	public String commentList(@RequestParam("post_code") String post_code 
			, HttpSession session, Model model) 
	{
		String result = "";
		IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
		
		
		ArrayList<PostCommentDTO> cmtList = new ArrayList<PostCommentDTO>();
		cmtList =  dao.list(post_code);
		
		
		model.addAttribute("cmtList", cmtList);
		
		result = "/AjaxCmt.jsp";
		// 왜 리턴을  못하는가.. 
		return result;
		
		
	}
	 */
}
