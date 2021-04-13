package com.company.temp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class ManagerController {
	
	private static final Logger logger = LoggerFactory.getLogger(ManagerController.class);
	
	//메인으로
	@RequestMapping("/")
	public String manager() {
	
		return "manager";
	}
	/*
	 * //회원관리
	 * 
	 * @RequestMapping("/user") public String user() {
	 * 
	 * return "user";
	 * 
	 * }
	 */
	
	//멘토관리
	@RequestMapping("/mentor")
	public String mentor() {
		
		return "mentor"; 
	}
	//신고관리
	@RequestMapping("/declaration")
	public String declaration() {
		
		return "declaration"; 
	}
	//매출종합관리
	@RequestMapping("/sum")
	public String sum() {
		
		return "sum"; 
	}
	//커뮤니티(공지사항)
	@RequestMapping("/community")
	public String community() {
		
		return "com/community"; 
	}
	//커뮤니티(후기)
	@RequestMapping("/com_later")
	public String com_later() {
		
		return "com/com_later"; 
	}
	
	//고객센터(결제/환불)
	@RequestMapping("/service")
	public String service() {
		
		return "serv/service"; 
	}
	//고객세터(취소/신청)
	@RequestMapping("/service2")
	public String service2() {
		
		return "serv/service2"; 
	}
}
