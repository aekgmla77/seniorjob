package com.company.mentoring.service;

import java.util.List;

public interface MentoringService {
	
public int insertMentoring(MentoringVO vo);
	
	public int updateMentoring(MentoringVO vo);
	
	public int deleteMentoring(MentoringVO vo);
	
	public MentoringVO getMentoring(MentoringVO vo);
	
	public List<MentoringVO> getSearchMentoring(MentoringVO vo);
	
	



}
