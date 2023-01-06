package com.test.mybatis;

public class ProjectOpenDTO {
	
	// 받아야 하는 정보
	// 프로젝트 개설시 필요한 모든 데이터 
	
	// DTO는 테이블 별로 전부 분리 (기능별로가 아님)
	
	// ○ 개설 프로젝트
	// 개설 프로젝트 코드, 공통회원 코드, 지역코드, 플랫폼 코드, 기술분류코드, 분야코드
	// , 주제 코드, 프로젝트 명, 개설일, 모집마감일, 프로젝트 시작 예정 일자, 프로젝트 종료 예정 일자
	// , 프로젝트 소개, 참고자료URL, 최종 수정 일시
	
	// ○ 프로젝트 직무
	// 프로젝트 직무코드, 직무분류 코드, 개설 프로젝트
	
	private String  p_code, user_code, region_part_code, platform_part_code, skill_part_code
	, department_part_code, p_name, p_start_date,p_end_date, pj_start_date, pj_end_date
	, p_info_content, p_info_refo, p_update_date;
	
	
	private String p_position_part_code, position_part_code;
	
	private int p_position_count;
	
	
	

}
