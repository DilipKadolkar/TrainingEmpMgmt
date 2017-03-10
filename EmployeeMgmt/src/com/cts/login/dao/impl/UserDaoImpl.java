package com.cts.login.dao.impl;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.cts.login.dao.UserDao;
import com.cts.login.viewBean.Employee;


/**
 * @author Dilip
 */
public class UserDaoImpl implements UserDao
{

		DataSource dataSource;

		public DataSource getDataSource()
		{
				return this.dataSource;
		}

		public void setDataSource(DataSource dataSource)
		{
				this.dataSource = dataSource;
		}

		@Override
		public boolean isValidUser(String username, String password) throws SQLException
		{
				String query = "Select count(1) from USER_DETAILS where username = ? and password = ?";
				PreparedStatement pstmt = dataSource.getConnection().prepareStatement(query);
				pstmt.setString(1, username);
				pstmt.setString(2, password);
				ResultSet resultSet = pstmt.executeQuery();
				if (resultSet.next())
						return (resultSet.getInt(1) > 0);
				else
						return false;
		}

		@Override
		public List<Employee> getEmployees() throws SQLException {
			System.out.println("Called UserDaoImpl.getEmployees()");
			String query = "Select * from EMPLOYEE_DETAILS";
			PreparedStatement pstmt = dataSource.getConnection().prepareStatement(query);
			ResultSet resultSet = pstmt.executeQuery();
			List<Employee> employees = new ArrayList<Employee>();
			Employee emp;
			while (resultSet.next()) {
				emp = new Employee();
				emp.setEmpId(resultSet.getString(1));
				emp.setEmpName(resultSet.getString(2));
				emp.setEmpRole(resultSet.getString(3));
				emp.setSupervisorName(resultSet.getString(4));
				emp.setUpdatedAt(resultSet.getDate(5));
				emp.setUpdatedBy(resultSet.getString(6));
				System.out.println(""+emp);
				employees.add(emp);
			}
			return employees;
		}
		
}