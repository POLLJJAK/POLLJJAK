/*================================
   PostCommetnController.java
==================================*/

package com.test.controller;

import java.util.ArrayList;


import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.dto.PostCommentDTO;
import com.test.mybatis.IPostCommentDAO;

@Controller
public class PostCommentController
{
   @Autowired
   private SqlSession sqlSession;
   
   
   @ResponseBody
   @RequestMapping(value = "/commentlist.action", method = RequestMethod.POST)
   public String commentList(@RequestBody String post_code, Model model) 
   {
      
      System.out.println(post_code);
      
      
      IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
      
      ObjectMapper mapper = new ObjectMapper();
      
      ArrayList<PostCommentDTO> cmtList = new ArrayList<PostCommentDTO>();
      cmtList =  dao.list(post_code);
      
      
      
      JSONObject jsonObject = new JSONObject();
      JSONArray jarr = new JSONArray();

      for (int i = 0; i < cmtList.size(); i++)
      {
         JSONObject jsonObj = new JSONObject();
         jsonObj.put("comment_code", cmtList.get(i).getComment_code());
         jsonObj.put("post_code", cmtList.get(i).getPost_code());
         jsonObj.put("user_code", cmtList.get(i).getUser_code());
         jsonObj.put("nickname", cmtList.get(i).getNickname());
         jsonObj.put("content", cmtList.get(i).getContent());
         jsonObj.put("commentdate", cmtList.get(i).getCommentdate());
         jsonObj.put("commentupdate", cmtList.get(i).getCommentupdate());
         jsonObj.put("cgroup", cmtList.get(i).getCgroup());
         jsonObj.put("cdepth", cmtList.get(i).getCdepth());
         jarr.add(jsonObj);
      }
      
      String jsonSt = jarr.toJSONString();
      System.out.println(jsonSt);
      //jsonObject.put("data", jarr);
      
      return jsonSt;
   }
   
   /*
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
			//찍히는구먼
			
		}
		System.out.println();
		model.addAttribute("map", map);
		result = "/AjaxCmt.jsp";
		return result;
		
		
	}
    */
}