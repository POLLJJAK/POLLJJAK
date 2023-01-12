/*================================
	PostCommetnController.java
==================================*/

package com.test.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	/*
	 * COMMENT_CODE, POST_CODE , USER_CODE, NICKNAME, CONTENT , COMMENTDATE,
	 * COMMENTUPDATE, CGROUP, CDEPTH
	 */

	/*
	@ResponseBody
	@RequestMapping(value="/postcommentlist.action", method = RequestMethod.GET)
	public ArrayList<PostCommentDTO> list (HttpServletRequest request, HttpServletResponse response) 
	{
		String post_code = request.getParameter("post_code");
		
		IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO .class);
		
		ArrayList<PostCommentDTO> list = dao.list(post_code);
		
		JSONObject obj = new JSONObject();
        	
        JSONArray jArray = new JSONArray();//배열이 필요할때
        
        for (int i = 0; i < list.size(); i++)//배열
        {
            JSONObject sObject = new JSONObject();//배열 내에 들어갈 json
            sObject.put("comment_code", list.get(i).getComment_code());
            sObject.put("post_code", list.get(i).getPost_code());
            sObject.put("user_code", list.get(i).getUser_code());
            sObject.put("nickname", list.get(i).getNickname());
            sObject.put("content", list.get(i).getContent());
            sObject.put("commentdate", list.get(i).getCommentdate());
            sObject.put("cgroup", list.get(i).getCgroup());
            sObject.put("cdepth", list.get(i).getCdepth());
            jArray.put(sObject);
        }
        obj.put("item", jArray);//배열을 넣음

        System.out.println(obj.toString());
		
		return 
		*/
		
		
		
}
