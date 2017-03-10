/**
 *
 */
package com.cts.login.service;

import java.util.List;
import java.sql.SQLException;

import com.cts.login.viewBean.Employee;

/**
 * @author Dilip
 *
 */
public interface UserService
{
		public boolean isValidUser(String username, String password) throws SQLException;

		public List<Employee> getEmployees() throws SQLException;
}
