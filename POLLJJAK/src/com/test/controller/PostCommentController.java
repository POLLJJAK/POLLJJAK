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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.dto.PostCommentDTO;
import com.test.mybatis.IMainLoungeListDAO;
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
   
   
   @RequestMapping(value = "/addcomment.action", method = RequestMethod.POST)
   //public String addComment(HttpServletRequest request, Model model, @RequestParam(value="post_code")String post_code, @RequestParam(value="content")String content) 
   public String addComment(HttpServletRequest request, Model model, PostCommentDTO dto) 
   {
      String result = null;
      
      // 세션처리 -----------------------------------------
      HttpSession session = request.getSession();

      String user_code = null;
      user_code = (String) session.getAttribute("user_code");
      System.out.println(user_code);
      
      session.getAttribute("loginCheck");
      
      if (session.getAttribute("loginCheck") == null)
      {
         result = "redirect:killsessionLoginform.action";
      }
      else
      {
      // ----------------------------------------- 세션처리
      
         
      IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
      dto.setUser_code(user_code);
      dao.addComment(dto);
      
      //이전페이지보내기
      String referer = request.getHeader("Referer"); // 헤더에서 이전 페이지를 읽는다.
      return "redirect:"+ referer;
      //result = "/Main-Lounge.jsp";   
      }
      return result;
   }
   
   @RequestMapping(value = "/addrecomment.action", method = RequestMethod.GET)
   public String addReComment(HttpServletRequest request, @RequestParam("post_code") String post_code
         , @RequestParam("comment_code") String comment_code, @RequestParam("content") String content, Model model
         , PostCommentDTO redto)
   {
      String result = "";
      
      // 세션처리 -----------------------------------------
      HttpSession session = request.getSession();

      String user_code = null; 
      
      user_code = (String) session.getAttribute("user_code");
      System.out.println(user_code);
      
      session.getAttribute("loginCheck");
      
      if (session.getAttribute("loginCheck") == null)
      {
         result = "redirect:killsessionLoginform.action";
      }
      else
      {
      // ----------------------------------------- 세션처리
         
      //System.out.println(post_code);
   
      IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
      
      //dao.addReComment(user_code, post_code, comment_code, content);
      redto.setUser_code(user_code);
      redto.setPost_code(post_code);
      redto.setComment_code(comment_code);
      redto.setContent(content);
      
      dao.addReComment(redto);
      
      int count = 0;
      count = dao.commentCount(post_code);
         
      //좋아요수 재활용
      model.addAttribute("likeCount", count);
      result = "/AjaxLikeUp.jsp";
      }
         
      return result;
   }
   
   
   @RequestMapping(value = "/removecomment.action", method = RequestMethod.GET)
   public String removeComment(HttpServletRequest request, @RequestParam("post_code") String post_code
         , @RequestParam("comment_code") String comment_code, Model model  )
   {
      String result = "";
      
      // 세션처리 -----------------------------------------
      HttpSession session = request.getSession();
      
      String user_code = null; 
      
      user_code = (String) session.getAttribute("user_code");
      System.out.println(user_code);
      
      session.getAttribute("loginCheck");
      
      if (session.getAttribute("loginCheck") == null)
      {
         result = "redirect:killsessionLoginform.action";
      }
      else
      {
         // ----------------------------------------- 세션처리
         
         IPostCommentDAO dao = sqlSession.getMapper(IPostCommentDAO.class);
         dao.removeComment(comment_code);
         
         int count = 0;
         count = dao.commentCount(post_code);
         
         //좋아요수 재활용
         model.addAttribute("likeCount", count);
         result = "/AjaxLikeUp.jsp";
      }
      
      return result;
   }
   
   
   
   
  
}