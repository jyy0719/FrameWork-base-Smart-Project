package com.project.plus.tests;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import com.project.plus.domain.FaqVO;
import com.project.plus.domain.ReviewVO;
import com.project.plus.service.FaqService;
import com.project.plus.service.ReviewService;


public class FaqServiceClient {
	
	public static void main(String[] args) {
		Date time = new Date();
		AbstractApplicationContext container = 
				new GenericXmlApplicationContext("classpath:spring/root-context.xml");
		
		

		
		ReviewService reviweService = 
				(ReviewService)container.getBean("ReviewService");
		
		
//		FaqVO vo = new FaqVO();
//		vo.setFaqNum(1);
//		vo.setFaqCategory("dhsmf");
//		vo.setFaqTitle("제목");
//		vo.setFaqContent("myBatis 내용입니다...");
		
		
		ReviewVO vo = new ReviewVO();
		vo.setReviewNum(6);
		vo.setMemberNum(2);
		vo.setClubNum(3);
		vo.setReviewContent("클럽연결되었따 .");
		vo.setReviewRate(2);
		vo.setReviewRegDate(time);
		 

//		reviweService.selectReview(vo);
		reviweService.insertReview(vo);

		System.out.println("된당~~");
//		System.out.println(vo.getClubName()+"+"+vo.getMemberNum());
		System.out.println();

		

		
		
				
		container.close();
	}


}
