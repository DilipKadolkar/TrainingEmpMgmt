package com.cts.login.dao;

import java.sql.SQLException;
import java.util.List;

import com.cts.login.viewBean.Employee;

/**
 * @author Dilip
 * 
 * This interface will be used to communicate with the
 * Database
 */
public interface UserDao
{
		public boolean isValidUser(String username, String password) throws SQLException;

		public List<Employee> getEmployees() throws SQLException;
}
