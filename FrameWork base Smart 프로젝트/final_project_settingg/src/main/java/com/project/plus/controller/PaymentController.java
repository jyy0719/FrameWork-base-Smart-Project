package com.project.plus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.plus.domain.PaymentVO;
import com.project.plus.service.PaymentService;


@Controller
@SessionAttributes("payment") // 값 변동이 없어도 review라는 이름에 같이 담겨서 나올 수 있도록.
public class PaymentController {
	
	@Autowired 
	private PaymentService paymentService;	 

	
	@RequestMapping("/getPaymentList.do")
	public String getPaymentList(PaymentVO vo, Model model) {
		
		vo.setMemberNum(3);
		
		
		List<PaymentVO> paymentList = paymentService.selectPaymentList(vo);
		model.addAttribute("paymentList", paymentList);
		//System.out.println(paymentList);
		
		
		return "paymentList";
	}
	
	@RequestMapping("/chargePointPopup.do")
	public String chargePointPopup(PaymentVO vo, Model model) {
		
		return "chargePoint";
	}
	
	@RequestMapping("/chargePoint.do")
	public String chargePoint(PaymentVO vo, Model model) {
		System.out.println("payAmount : " + vo.getPayAmount());
		
		
		return "paymentList";
	} 
}
