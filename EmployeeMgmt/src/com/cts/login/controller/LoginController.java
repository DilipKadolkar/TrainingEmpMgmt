package com.cts.login.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sun.management.jdp.JdpGenericPacket;

import com.cts.login.delegate.LoginDelegate;
import com.cts.login.viewBean.Employee;
import com.cts.login.viewBean.LoginBean;
import com.google.gson.Gson;

@Controller
public class LoginController
{
		@Autowired
		private LoginDelegate loginDelegate;

		@RequestMapping(value="/",method=RequestMethod.GET)
		public ModelAndView displayLogin(HttpServletRequest request, HttpServletResponse response, LoginBean loginBean)	{
			ModelAndView model = new ModelAndView("login");
			model.addObject("loginBean", loginBean);
			return model;
		}
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public ModelAndView executeLogin(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("loginBean")LoginBean loginBean)	{
				ModelAndView model= null;
				try	{
						boolean isValidUser = loginDelegate.isValidUser(loginBean.getUsername(), loginBean.getPassword());
						if(isValidUser)	{
								System.out.println("User Login Successful");
								request.setAttribute("loggedInUser", loginBean.getUsername());
								
								List<Employee> employees = loginDelegate.getEmployees();
								
								Gson gson= new Gson();								
								String jsonEmployees= gson.toJson(employees);
								System.out.println("jsonEmployees "+jsonEmployees);
								request.setAttribute("employees", jsonEmployees);
								model = new ModelAndView("welcome");
						}else{
								model = new ModelAndView("login");
								request.setAttribute("message", "Username or Password is incorrect, please use correct credentials!!");
						}

				} catch(Exception e) {
						e.printStackTrace();
				}
				return model;
		}
}
