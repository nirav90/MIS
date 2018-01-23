package com.mis.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.AuthLoginDao;
import com.mis.formBean.AddUserForm;
import com.opensymphony.xwork2.ActionSupport;

public class addUserAction extends ActionSupport
{

	AddUserForm	         addUserForm;
	private List<String>	list	= null;
	public String addUser()
	{

		String flag = "false";

		AuthLoginDao authLogin = new AuthLoginDao();

		int message = authLogin.addUser(addUserForm);

		if (message == 1)
		{

			flag = "true";
		}
		return flag;
	}

	public String getReportingPerson()
	{

		String flag = "false";

		AuthLoginDao authLogin = new AuthLoginDao();

		HttpServletRequest request = ServletActionContext.getRequest();
		int userType = Integer.parseInt(request.getParameter("designation"));

		userType = userType - 1;
		list = authLogin.getReportingPerson(userType);
		System.out.println("size of list =========" + list.size());
		flag = "true";
		return flag;

	}

	public AddUserForm getAddUserForm()
	{
		return addUserForm;
	}

	public void setAddUserForm(AddUserForm addUserForm)
	{
		this.addUserForm = addUserForm;
	}

	public List<String> getList()
	{
		return list;
	}

	public void setList(List<String> list)
	{
		this.list = list;
	}

}
