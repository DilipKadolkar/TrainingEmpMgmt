package com.cts.login.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.cts.login.dao.UserDao;
import com.cts.login.service.UserService;
import com.cts.login.viewBean.Employee;

public class UserServiceImpl implements UserService
{

		private UserDao userDao;

		public UserDao getUserDao()
		{
				return this.userDao;
		}

		public void setUserDao(UserDao userDao)
		{
				this.userDao = userDao;
		}

		@Override
		public boolean isValidUser(String username, String password) throws SQLException
		{
				return userDao.isValidUser(username, password);
		}

		@Override
		public List<Employee> getEmployees() throws SQLException {
			System.out.println("Called UserServiceImplgetEmployees()");
			
			return userDao.getEmployees();
		}

}
