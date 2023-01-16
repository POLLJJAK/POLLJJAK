/*================================
   PostCommetnController.java
==================================*/

package com.test.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.mybatis.IPostCommentDAO;
import com.test.util.MapToJson;

@Controller
public class PostCommentController {
	
   @Autowired
   private SqlSession sqlSession;
   
   
	@RequestMapping(value = "/commentlist.action")
	public String commentList(HttpServletRequest request, Model model) throws JsonGenerationException, JsonMappingException, IOException 
	{
		String result = null;
		
		//요청온 request객체 convertToJsonString에 넘겨서 jsonString 으로 변환
		//jsonString을 convertToMap을 이용하여 Map으로 변환
		String jsonString = MapToJson.convertToJsonString(request);
		Map<String, Object> param = MapToJson.convertToMap(jsonString, "paramCode");
		Map<String, Object> resultMap = new HashMap();
		   
		
		//Map을 파라미터로 모델 호출 & 데이터 Map에 반환 
		//다중 Row의 결과이므로 ListMap에 반환
		IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
		List<Map<String, Object>> resultList =  dao.list(param);
		  
		//resultMap에 저장 & 다시 json스트링으로 변환 
		resultMap.put("resultList", resultList);
		ObjectMapper mapper = new ObjectMapper();
		String aaa = mapper.writeValueAsString(resultMap);
		
		//ajax페이지에 전달
		model.addAttribute("result", aaa);
		result = "/AjaxResult.jsp";	
		
		return result;
	}
   
   /*
    * @RequestMapping(value = "/commentlist.action", method = RequestMethod.POST)
    * public String commentList(@RequestParam("post_code") String post_code
    * , HttpSession session, Model model)
    * {
    * String result = "";
    * Map<String, Object> map = new HashMap<String, Object>();
    * IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
    * 
    * 
    * ArrayList<PostCommentDTO> cmtList = new ArrayList<PostCommentDTO>();
    * cmtList = dao.list(post_code);
    * 
    * for (int i = 0; i < cmtList.size(); i++)
    * {
    * map.put("comment_code", cmtList.get(i).getComment_code());
    * map.put("post_code", cmtList.get(i).getPost_code());
    * map.put("user_code", cmtList.get(i).getUser_code());
    * map.put("nickname", cmtList.get(i).getNickname());
    * map.put("content", cmtList.get(i).getContent());
    * map.put("commentdate", cmtList.get(i).getCommentdate());
    * map.put("commentupdate", cmtList.get(i).getCommentupdate());
    * map.put("cgroup", cmtList.get(i).getCgroup());
    * map.put("cdepth", cmtList.get(i).getCdepth());
    * 
    * //System.out.println(map.values());
    * //찍히는구먼
    * 
    * }
    * System.out.println();
    * model.addAttribute("map", map);
    * result = "/AjaxCmt.jsp";
    * return result;
    * 
    * 
    * }
    */
}