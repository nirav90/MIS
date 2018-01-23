package com.mis.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class AuthFail extends ActionSupport
{

	public String authFail() throws IOException
	{

		System.out.println("in auth fail ");

		HttpServletRequest request = ServletActionContext.getRequest();

		String error = "please Provide Correct Username and Password";

		request.setAttribute("error", error);

		System.out.println("in auth fail over");
		return "success";
	}

}
