package com.mis.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.regexp.internal.recompile;

public class Logout extends ActionSupport
{

	public String execute()
	{
		String flag = "true";

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession ss = ServletActionContext.getRequest().getSession();
		ss.invalidate();

		return flag;

	}

}
