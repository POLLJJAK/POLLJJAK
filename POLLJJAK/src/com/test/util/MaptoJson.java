package com.test.util;

import java.io.BufferedReader;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class MaptoJson {
	
	
	private static Object convertJsonToObject(String strJson, String strKeyName) throws JsonParseException, JsonMappingException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();

		TypeReference<Map<String, Object>> typeReference = new TypeReference<Map<String, Object>>() {
		};

		Map<String, Object> object = objectMapper.readValue(strJson, typeReference);

		return object.get(strKeyName);
	}


	public static String convertToJsonString(HttpServletRequest request) {

		String returnString = null;

		try {

			String line = null;

			StringBuffer strBuffer = new StringBuffer();

			BufferedReader reader = request.getReader();

			while ((line = reader.readLine()) != null) {

				strBuffer.append(line);
			}

			// returnJsonObject = (JSONObject)JSONValue.parse(strBuffer.toString());

			returnString = strBuffer.toString();

		} catch (Exception e) {

		}

		return returnString;
	}

	public static Map<String, Object> convertToMap(String strJson, String strKeyName) {

		Map<String, Object> formData = null;
		try {
			formData = (Map<String, Object>) convertJsonToObject(strJson, strKeyName);

		} catch (Exception ex) {

		}

		return formData;
	}

}
