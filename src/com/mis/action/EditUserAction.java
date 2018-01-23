package com.mis.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.EditUserDao;
import com.mis.formBean.UserDataShowForm;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EditUserAction extends ActionSupport implements ModelDriven<UserDataShowForm>
{

	EditUserDao	           dao	            = new EditUserDao();

	List<UserDataShowForm>	list;

	UserDataShowForm	   userDataShowForm	= new UserDataShowForm();

	public String editUser()
	{

		String flag = "false";

		HttpServletRequest request = ServletActionContext.getRequest();

		int id = Integer.parseInt(request.getParameter("h1"));

		try
		{

			list = dao.userDateAdmin(id);

			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return flag;

	}

	public String editUserByID()
	{

		String flag = "false";

		try
		{

			int i = dao.editUserByID(userDataShowForm);

			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return flag;

	}

	public String deleteUserByID()
	{

		String flag = "false";

		HttpServletRequest request = ServletActionContext.getRequest();

		int id = Integer.parseInt(request.getParameter("h1"));

		try
		{

			int i = dao.deleteUserByID(id);

			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return flag;

	}

	public List<UserDataShowForm> getList()
	{
		return list;
	}

	public void setList(List<UserDataShowForm> list)
	{
		this.list = list;
	}

	@Override
	public UserDataShowForm getModel()
	{
		// TODO Auto-generated method stub
		return userDataShowForm;
	}

	public UserDataShowForm getUserDataShowForm()
	{
		return userDataShowForm;
	}

	public void setUserDataShowForm(UserDataShowForm userDataShowForm)
	{
		this.userDataShowForm = userDataShowForm;
	}

}
