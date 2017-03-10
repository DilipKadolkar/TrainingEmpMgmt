package com.cts.login.delegate;

import java.sql.SQLException;
import java.util.List;

import com.cts.login.service.UserService;
import com.cts.login.viewBean.Employee;

public class LoginDelegate {
	private UserService userService;

	public UserService getUserService() {
		return this.userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public boolean isValidUser(String username, String password)
			throws SQLException {
		return userService.isValidUser(username, password);
	}
	public List<Employee> getEmployees() throws SQLException {
		System.out.println("Called LoginDelegate.getEmployees()");
		return userService.getEmployees();
	}
}
