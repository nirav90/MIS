package com.mis.action;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.DashBoardDao;
import com.mis.formBean.TargetForm;
import com.mis.formBean.sessionBean;
import com.opensymphony.xwork2.ActionSupport;

public class DashBoard extends ActionSupport
{

	List<TargetForm>	list;

	public String showDashboard()
	{
		String flag = "false";
		try
		{

			String month = "month";

			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession ss = ServletActionContext.getRequest().getSession();

			sessionBean sessionBean = (sessionBean) ss.getAttribute("sessionBean");

			String firstName = sessionBean.getFirstName();
			String userType = sessionBean.getUserType();

			Calendar calendar = Calendar.getInstance();
			int currentMonth = calendar.getTime().getMonth() + 1;

			if (currentMonth == 1)
			{
				month = "January";
			}
			else if (currentMonth == 2)
			{
				month = "February";
			}
			else if (currentMonth == 3)
			{
				month = "March";
			}
			else if (currentMonth == 4)
			{
				month = "April";
			}
			else if (currentMonth == 5)
			{
				month = "May";
			}
			else if (currentMonth == 6)
			{
				month = "June";
			}
			else if (currentMonth == 7)
			{
				month = "July";
			}
			else if (currentMonth == 8)
			{
				month = "August";
			}
			else if (currentMonth == 9)
			{
				month = "September";
			}
			else if (currentMonth == 10)
			{
				month = "October";
			}
			else if (currentMonth == 11)
			{
				month = "November";
			}
			else if (currentMonth == 12)
			{
				month = "December";
			}

			DashBoardDao dashBoardDao = new DashBoardDao();
			list = dashBoardDao.showDashboard(month, firstName, userType);
			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}

	public List<TargetForm> getList()
	{
		return list;
	}

	public void setList(List<TargetForm> list)
	{
		this.list = list;
	}

}
