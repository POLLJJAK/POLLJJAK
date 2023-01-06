package com.test.mybatis;

import java.awt.List;

public class ProjectOpenDTO {
	
	// 받아야 하는 정보
	// 프로젝트 개설시 필요한 모든 데이터 
		
	// ○ 개설 프로젝트
	//   공통회원 코드, 지역코드, 플랫폼 코드, 기술분류코드, 분야코드
	// , 주제 코드, 프로젝트 명, 개설일, 모집마감일, 프로젝트 시작 예정 일자, 프로젝트 종료 예정 일자
	// , 프로젝트 소개, 참고자료URL, 최종 수정 일시
	
	
	private String  user_code, region_part_code, platform_part_code, skill_part_code
	, department_part_code, p_name, p_start_date,p_end_date, pj_start_date, pj_end_date
	, p_info_content, p_info_refo, p_update_date;

	public String getUser_code() {
		return user_code;
	}

	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}

	public String getRegion_part_code() {
		return region_part_code;
	}

	public void setRegion_part_code(String region_part_code) {
		this.region_part_code = region_part_code;
	}

	public String getPlatform_part_code() {
		return platform_part_code;
	}

	public void setPlatform_part_code(String platform_part_code) {
		this.platform_part_code = platform_part_code;
	}

	public String getSkill_part_code() {
		return skill_part_code;
	}

	public void setSkill_part_code(String skill_part_code) {
		this.skill_part_code = skill_part_code;
	}

	public String getDepartment_part_code() {
		return department_part_code;
	}

	public void setDepartment_part_code(String department_part_code) {
		this.department_part_code = department_part_code;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_start_date() {
		return p_start_date;
	}

	public void setP_start_date(String p_start_date) {
		this.p_start_date = p_start_date;
	}

	public String getP_end_date() {
		return p_end_date;
	}

	public void setP_end_date(String p_end_date) {
		this.p_end_date = p_end_date;
	}

	public String getPj_start_date() {
		return pj_start_date;
	}

	public void setPj_start_date(String pj_start_date) {
		this.pj_start_date = pj_start_date;
	}

	public String getPj_end_date() {
		return pj_end_date;
	}

	public void setPj_end_date(String pj_end_date) {
		this.pj_end_date = pj_end_date;
	}

	public String getP_info_content() {
		return p_info_content;
	}

	public void setP_info_content(String p_info_content) {
		this.p_info_content = p_info_content;
	}

	public String getP_info_refo() {
		return p_info_refo;
	}

	public void setP_info_refo(String p_info_refo) {
		this.p_info_refo = p_info_refo;
	}

	public String getP_update_date() {
		return p_update_date;
	}

	public void setP_update_date(String p_update_date) {
		this.p_update_date = p_update_date;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
