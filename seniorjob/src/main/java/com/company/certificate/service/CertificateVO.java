package com.company.certificate.controller;

import lombok.Data;

@Data
public interface CertificateVO {
	private String certi_no;		//�ڰ��� ��ȣ
	private String resume_no;		//�̷¼� ��ȣ
	private String certi_kinds;		//�ڰ��� �з�
	private String certi_name;		//�ڰ��� �̸�
	private String certi_place;		//�ڰ��� �߱����
	private String accept;			//�հݿ���
	private String certi_date;		//�����
}
