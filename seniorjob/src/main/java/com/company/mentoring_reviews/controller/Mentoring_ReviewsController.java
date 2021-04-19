package com.company.mentoring_reviews.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import com.company.mentoring_reviews.service.Mentoring_ReviewsVO;
import com.company.mentoring_reviews.service.PagingMaker;
import com.company.mentoring_reviews.service.MenSearchCriteria;
import com.company.mentoring_reviews.service.impl.Mentoring_ReviewsMapper;


@Controller
public class Mentoring_ReviewsController {

	@Autowired Mentoring_ReviewsMapper mentoring_ReviewsMapper;
	
	// 게시판 목록 조회(공지사항)
		@RequestMapping("/mentoringReviews")
		public String list(Model model, @ModelAttribute("scri") MenSearchCriteria scri) {

			model.addAttribute("list", mentoring_ReviewsMapper.list(scri));

			PagingMaker pagingMaker = new PagingMaker();
			pagingMaker.setCri(scri);
			pagingMaker.setTotalCount(mentoring_ReviewsMapper.listCount(scri));

			model.addAttribute("pagingMaker", pagingMaker);

			return "/mentoringReviews/mentoringReviews"; // 공지사항
		}
	
	
	@RequestMapping("/getSearchMenReview")	//후기 리스트 (단건조회)
	public String getSearchMenReview(Mentoring_ReviewsVO vo, Model model) {
		model.addAttribute("menslist", mentoring_ReviewsMapper.getSearchMenReview(vo));
		mentoring_ReviewsMapper.upnumMenReview(vo); // 조회수 증가

		model.addAttribute("mennum", mentoring_ReviewsMapper.menPreNext(vo));
		mentoring_ReviewsMapper.menPreNext(vo); // 게시글 이전/다음
		
		return "/mentoringReviews/getSearchMenReview";
	}
	
	// 검색(공지사항)
	@RequestMapping("/searchMenService")
	public String searchMenService(Model model, @RequestParam("searchKeyword") String searchKeyword) {
		List<Mentoring_ReviewsVO> list = mentoring_ReviewsMapper.searchMenService(searchKeyword);
		model.addAttribute("list", list);
			return "/mentoringReviews/searchMenService";
		}
	
	
	@RequestMapping("/insertMenReviews") //후기 등록 
	public String insertMenReviews(Mentoring_ReviewsVO vo) {
		return "/mentoringReviews/insertMenReviews";
	}
	
	
	@RequestMapping("/insertMenReviewsProc") //후기 등록 프록
	public String insertMentoring_ReviewsProc(Mentoring_ReviewsVO vo) {
		mentoring_ReviewsMapper.insertMenReview(vo);
		return "redirect:/mentoringReviews";
	}
	
	
	@RequestMapping("/updateMenReviews")	//후기 수정
	public String updateMenReviews(Mentoring_ReviewsVO vo, Model model) {
		model.addAttribute("menslist", mentoring_ReviewsMapper.getSearchMenReview(vo));
		return "/mentoringReviews/updateMenReviews";
	}
	
	
	@RequestMapping("/updateMenReviewsProc")	//후기 수정 프록
	public String updateMentoring_ReviewsProc(Mentoring_ReviewsVO vo) {
		mentoring_ReviewsMapper.updateMenReview(vo);
		return "redirect:/mentoringReviews";
	}
	
	
	@RequestMapping("/deleteMenReviews")	//후기 삭제
	public String deleteMentoring_Reviews(Mentoring_ReviewsVO vo, Model model) {
		mentoring_ReviewsMapper.deleteMenReview(vo);
		
		return "redirect:/mentoringReviews";
	}
	

	
}
