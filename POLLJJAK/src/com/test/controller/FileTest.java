package com.test.controller;

import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.util.FileManager;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class FileTest
{
	@RequestMapping(value="/actions/imagetest.action", method = RequestMethod.GET)
	public String imageTest(HttpServletRequest request, Model model)
	{
		return "Good";
	}
	
	@RequestMapping(value="/actions/downloadtest.action", method = RequestMethod.GET)
	public String downloadTest(HttpServletRequest request, Model model)
	{
		return "Good";
	}
	
	@RequestMapping(value="/actions/uploadimagetest.action", method = RequestMethod.POST)
	public String uploadImageTest(HttpServletRequest request, Model model)
	{
		try
		{
			MultipartRequest m = FileManager.upload(request, "upload\\project");
			
			ArrayList<String> imageList = FileManager.getFileNames(m);
			
			System.out.println("파일명 : " + imageList.get(0));
			System.out.println("aaa : " + m.getParameter("aaa"));
			System.out.println("bbb : " + m.getParameter("bbb"));
			
			model.addAttribute("imageList", imageList);
			
		} catch (Exception e)
		{
			e.toString();
		}
		

		return "Good";
	}
	
	@RequestMapping(value="/actions/uploaddownloadtest.action", method = RequestMethod.POST)
	public String uploadDownloadTest(HttpServletRequest request, Model model)
	{
		try
		{
			MultipartRequest m = FileManager.upload(request, "upload\\project");
			ArrayList<String> downList = FileManager.getFileNames(m);
			model.addAttribute("downList", downList);	
		} catch (Exception e)
		{
			e.toString();
		}
		
		
		return "Good";
	}
}
