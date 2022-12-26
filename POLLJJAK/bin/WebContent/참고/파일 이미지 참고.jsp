<%-- <%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	/*문자 셋 */
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%
	/* FileRead.jsp */

	// 1. 어플리케이션 루트(경로) 얻어내기
	String appRoot = "/";
	appRoot = pageContext.getServletContext().getRealPath(appRoot);
	
	// 2. 파일을 읽기 위해 File 객체를 생성
	File newFile = new File(appRoot, "data/text.txt");
	
	// 3.지정된 경로에 해당 파일이 존재하는지 검사
	if (newFile.exists())
	{
		// 4-1. 파일을 읽기 위한 FileReader 를 생성
		FileReader fr = new FileReader(newFile);
	
		// 4-2. FileReader 를 조금 더 효율적으로 읽기 위해 BufferedReader 로 감싸기
		BufferedReader br = new BufferedReader(fr);
	
		// 5. 실질적으로 파일의 내용을 읽어냄
		String readData;
		
		while ((readData = br.readLine()) != null)
		{
			// 읽어낸 내용을 출력 스트림을 활용하여 출력
			out.println(readData + "<br>");
		}
	
		// 6-1. BufferedReader 리소스 반납(닫아줌)
		br.close();
	
		// 6-2. FileReader 리소스 반납(닫아줌)
		fr.close();

	}
%> --%>