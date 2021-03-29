package com.company.mentor.service;

import lombok.Data;

@Data
public class MentorVO { //멘토
	private String mentor_id; //멘토id
	private String mentoring_kind; //대표 멘토링 분야
	private String mentor_introduce; // 멘토소개
	private String mentor_career; //멘토 주요 경력
	private String mentor_photo; // 멘토 사진
	private String mentor_license; //멘토 자격증
	private String mentor_career_certificate; //멘토 경력증명서
	private String mentor_school_name; //멘토 학교명
	private String mentor_company_name; //멘토 회사명
	private String mentor_department_name; //멘토 부서명
	private String mentor_job_id; //멘토 직급
	private String mentor_duty; //멘토 직무
	private String id; //아이디
	private String mentoring_age; //멘토링 연령대
	private String mentoring_location; //멘토링 지역
	private String mentor_confirm_status; //멘토링 승인여부
}