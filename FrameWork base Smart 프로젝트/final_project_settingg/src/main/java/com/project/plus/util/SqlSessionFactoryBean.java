package com.project.plus.util;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryBean {
	private static SqlSessionFactory sessionFactory = null;

	static {
		try {
			if(sessionFactory==null) {
                          Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
                          sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSession getSqlSessionInstance() {
		return sessionFactory.openSession();
	}
}