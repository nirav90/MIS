package com.mis.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.AuthLoginDao;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.UserDataShowForm;
import com.mis.formBean.UserMasterForm;
import com.mis.formBean.sessionBean;
import com.opensymphony.xwork2.ActionSupport;

public class AuthLogin extends ActionSupport
{

	UserMasterForm	       userMaster;
	List<UserDataShowForm>	list;
	List<ClientDetailForm>	clientList;
	AuthLoginDao	       authLoginDao	= new AuthLoginDao();

	public String authentication()
	{
		System.out.println("in action");
		sessionBean sessionBean = null;
		String flag = "false";
		try
		{

			sessionBean = authLoginDao.authentication(userMaster);

			System.out.println("usertype=======================" + sessionBean.getUserType());
			System.out.println("first name=======================" + sessionBean.getFirstName());

			String userType = sessionBean.getUserType();
			if (userType.equalsIgnoreCase("admin"))
			{
				flag = "admin";
			}
			else if (userType.equalsIgnoreCase("6"))
			{

				flag = "relmanager";
			}
			else if (userType.equalsIgnoreCase("5"))
			{

				flag = "relmanager";
			}
			else if (userType.equalsIgnoreCase("4"))
			{

				flag = "relmanager";
			}
			else if (userType.equalsIgnoreCase("3"))
			{

				flag = "relmanager";
			}
			else if (userType.equalsIgnoreCase("2"))
			{

				flag = "relmanager";
			}
			else
			{

				flag = "false";
			}

			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("loggedUser", "loggedUser");
			session.setAttribute("sessionBean", sessionBean);
			// list = authLoginDao.userDateAdmin();

		}
		catch (Exception e)
		{
			return flag;

		}

		return flag;
	}

	public String showUserList()
	{
		String flag = "false";

		{
			list = authLoginDao.userDateAdmin();
			flag = "true";
		}

		return flag;
	}

	public String reqRelManagerDhasBoard()
	{

		String flag = "false";

		try
		{
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession ss = ServletActionContext.getRequest().getSession();

			sessionBean sessionBean = (sessionBean) ss.getAttribute("sessionBean");

			clientList = authLoginDao.reqRelManagerDhasBoard(sessionBean.getFirstName());

			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return flag;

	}

	public UserMasterForm getUserMaster()
	{
		return userMaster;
	}

	public void setUserMaster(UserMasterForm userMaster)
	{
		this.userMaster = userMaster;
	}

	public List<UserDataShowForm> getList()
	{
		return list;
	}

	public void setList(List<UserDataShowForm> list)
	{
		this.list = list;
	}

	public List<ClientDetailForm> getClientList()
	{
		return clientList;
	}

	public void setClientList(List<ClientDetailForm> clientList)
	{
		this.clientList = clientList;
	}

}
