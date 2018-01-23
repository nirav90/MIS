package com.mis.interceptor;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor
{

	public String intercept(ActionInvocation invocation) throws Exception
	{
		String message = "login";
		HttpSession session = ServletActionContext.getRequest().getSession();
		String logUser = (String) session.getAttribute("loggedUser");

		if (logUser == null || logUser.equals(null))
		{
			return "login";
		}
		else
		{
			System.out.println("invocatn.invoke" + invocation.invoke().toString());
			return invocation.invoke();
		}

	}

}
