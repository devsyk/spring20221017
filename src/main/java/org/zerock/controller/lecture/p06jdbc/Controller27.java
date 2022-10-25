package org.zerock.controller.lecture.p06jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex27")
public class Controller27 {
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping("sub01")
	public void method1() throws Exception {
		String sql1 = "UPDATE Bank SET balance = balance - 100 "
				+ "WHERE customerId = 2";
		String sql2 = "UPDATE Bank SET balance = balance + 100 "
				+ "WHERE customerId = 1";
		
		try(Connection con = dataSource.getConnection();) {
			
			try {
				//autocommit : disable
				con.setAutoCommit(false);
				
				Statement stmt1 = con.createStatement();
				stmt1.executeUpdate(sql1);
				
//				int a = 0;
//				int b = 3 / a; //ArithmeticException;
				
				Statement stmt2 = con.createStatement();
				stmt2.executeUpdate(sql2);
				
				con.commit(); //문제없으면 커밋
				
			} catch (Exception e) {
				con.rollback(); //문제시, 롤백
			}
			
		}
	}
	
	@GetMapping("sub02")
	public void method2() {

	}
	
	@PostMapping("sub02")
	public void method3(String fname, String lname, int salary) throws Exception {
		String sql1 = "INSERT INTO Employees (FirstName, LastName) VALUES (?, ?)";
		String sql2 = "INSERT INTO Salary (EmployeeID, Salary) VALUES (?, ?)";
		try (Connection con = dataSource.getConnection();) {
			con.setAutoCommit(false);

			try ( PreparedStatement pstmt1 = con.prepareStatement(sql1, Statement.RETURN_GENERATED_KEYS);
				  PreparedStatement pstmt2 = con.prepareStatement(sql2);
					){
				
				pstmt1.setString(1, fname);
				pstmt1.setString(2, lname);
				
				pstmt1.executeUpdate();
				
				// Exception 발생
//				int a = 0;
//				int b = 3/a;
				
				try (ResultSet rs = pstmt1.getGeneratedKeys();){
					int newKey = 0;
					if(rs.next()) {
						newKey = rs.getInt(1);
						pstmt2.setInt(1, newKey); //자동키생성
						pstmt2.setInt(2, salary);
						pstmt2.executeUpdate();
					}
					
				} 				
				con.commit();
				
			} catch (Exception e) {
				e.printStackTrace();
				con.rollback(); 
			}
		} 
		
	}
}
