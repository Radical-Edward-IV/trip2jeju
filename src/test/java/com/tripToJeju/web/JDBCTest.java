package com.tripToJeju.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
		,"file:src/main/webapp/WEB-INF/spring/root-context.xml"
})
public class JDBCTest {

	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	@Test
	public void jdbc테스트() throws ClassNotFoundException, SQLException {
		Class.forName("org.mariadb.jdbc.Driver");
		Connection conn = DriverManager.getConnection(
				"jdbc:mariadb://localhost:3306/t2j"
				,"root"
				,"0000");
	}

	@Test
	public void dataSource테스트() throws SQLException {
		Connection conn = dataSource.getConnection();
		System.out.println("[conn]: " + conn);
	}

	@Test
	public void sqlSessionFactory테스트() {
		SqlSession session = sqlSessionFactory.openSession();
		System.out.println("[session]:" + session);
	}

}
