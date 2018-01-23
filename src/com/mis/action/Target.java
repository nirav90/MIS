package com.mis.action;

import java.sql.SQLException;

import com.mis.dao.TargetDao;
import com.mis.formBean.TargetForm;
import com.opensymphony.xwork2.ActionSupport;

public class Target extends ActionSupport
{

	TargetForm	target;
	TargetDao	targetDao	= new TargetDao();

	public String setTarget() throws SQLException
	{
		String flag = "false";
		try
		{
			targetDao.setTarget(target);
			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}

	public TargetForm getTarget()
	{
		return target;
	}

	public void setTarget(TargetForm target)
	{
		this.target = target;
	}

}
