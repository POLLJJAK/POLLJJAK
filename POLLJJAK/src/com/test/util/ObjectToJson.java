package com.test.util;
import com.google.gson.Gson;
import com.test.dto.ProjectOpenDTO;

public class ObjectToJson {

	public static String memberListJsonStringify(ProjectOpenDTO dto) {
		
		// Gson 객체 생성
		Gson gson = new Gson();
		
		// 넘겨받은 객체 -> Json 문자열
		String studentJson = gson.toJson(dto);
		
		// Json 문자열 리턴
		return studentJson;  // {"id":1,"name":"Anna"}
	}
	
	public static String memberRecordJsonStringify(ProjectOpenDTO dto) {
		
		// Gson 객체 생성
		Gson gson = new Gson();
		
		// 넘겨받은 객체 -> Json 문자열
		String recordJson = gson.toJson(dto);
		
		// Json 문자열 리턴
		return recordJson;  // {"id":1,"name":"Anna"}
	}
	
}
	 

	 
	

