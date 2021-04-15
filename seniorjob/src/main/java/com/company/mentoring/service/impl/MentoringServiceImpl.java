package com.company.mentoring.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.company.mentoring.service.MentoringService;
import com.company.mentoring.service.MentoringVO;
import com.company.portfolio.service.FileRenamePolicy;

@Service
public class MentoringServiceImpl implements MentoringService {
	
	@Autowired MentoringMapper dao;

	// 멘토링 등록
	@Override
	public void insertMentoring(MentoringVO vo, HttpServletRequest request) throws IllegalStateException, IOException {
		
		// 이미지 업로드
		MultipartFile photoFile = vo.getMentoring_photo_file(); // 멘토링 사진 파일
		
		if(photoFile != null && !photoFile.isEmpty() && photoFile.getSize() > 0) {
			// 파일 이름만 추출
			String photoFileName = photoFile.getOriginalFilename();
			
			// 파일 저장소 경로 확인
			String path = request.getServletContext().getRealPath("image");
			
			// 파일 이름 중복 처리
			// 동일 파일 처리 시 파일 이름 뒤에 숫자 삽입
			File photoRename = FileRenamePolicy.rename(new File(path, photoFileName));
			
			// 저장소에 파일 저장
			photoFile.transferTo(new File(path, photoRename.getName()));
			
			// DB에 파일 이름만 저장
			vo.setMentoring_photo(photoRename.getName());
			dao.insertMentoring(vo);
		}
	}

	@Override
	public int updateMentoring(MentoringVO vo) {
		return dao.updateMentoring(vo);
	}

	@Override
	public int deleteMentoring(MentoringVO vo) {
		return dao.deleteMentoring(vo);
	}

	@Override
	public MentoringVO getMentoring(MentoringVO vo) {
		return dao.getMentoring(vo);
	}

	@Override
	public List<MentoringVO> getSearchMentoring(MentoringVO vo) {
		return dao.getSearchMentoring(vo);
	}

	@Override
	public List<MentoringVO> mentoringRegisterCheck(MentoringVO vo) {
		return dao.mentoringRegisterCheck(vo);
	}

	@Override
	public List<MentoringVO> getMentoringList(MentoringVO vo) {
		return dao.getMentoringList(vo);
	}

}
