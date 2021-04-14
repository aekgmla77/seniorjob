package com.company.cart.service;

import java.util.List;

public interface CartService {
	//전체
	public List<CartVO> getSearchCartList(CartVO vo);
	//입력
	public int insertCart(CartVO vo);
	//삭제
	public int deleteCart(CartVO vo);
	//수정
	public int updateCart(CartVO vo);
	//단건
	public CartVO getCart(CartVO vo);
	//중복체크
	public int countCart(CartVO vo);
	//전체삭제
	public int deleteCartAll(CartVO vo);
}
