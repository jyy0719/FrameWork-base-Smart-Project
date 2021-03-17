package com.project.plus.mapper;

import java.util.List;

import com.project.plus.domain.PaymentVO;

public interface PaymentMapper {
	
	public List<PaymentVO> selectPaymentList(PaymentVO vo);
}
//dao 라고 생각하면 된다 . 
