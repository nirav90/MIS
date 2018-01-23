package com.mis.action;

import java.util.ArrayList;
import java.util.List;

import com.mis.dao.BusinessDetailDao;
import com.mis.dao.SettingDao;
import com.mis.domain.PolicyDetailDomain;
import com.mis.formBean.ClientDetailForm;

public class SettingAction
{

	List<ClientDetailForm>	clientDetailForms;
	List<String>	       RmName	= new ArrayList<String>();

	public String getRMName()
	{
		String flag = "false";
		try
		{
			System.out.println("in action");

			SettingDao settingDao = new SettingDao();
			RmName = settingDao.getRmName();

			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}

	public List<String> getRmName()
	{
		return RmName;
	}

	public void setRmName(List<String> rmName)
	{
		RmName = rmName;
	}

}
