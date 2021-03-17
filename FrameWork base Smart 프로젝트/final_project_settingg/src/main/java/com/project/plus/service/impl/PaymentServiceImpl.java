package com.project.plus.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.plus.domain.PaymentVO;
import com.project.plus.mapper.PaymentMapper;
import com.project.plus.service.PaymentService;

@Service("PaymentService")
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentMapper mapper;

	@Override
	public List<PaymentVO> selectPaymentList(PaymentVO vo) {
		List<PaymentVO> paymentList = mapper.selectPaymentList(vo);
		return paymentList;
	}
	
	
	
}
