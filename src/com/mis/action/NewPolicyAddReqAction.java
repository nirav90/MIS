package com.mis.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.AuthLoginDao;
import com.mis.dao.SettingDao;
import com.mis.formBean.sessionBean;

public class NewPolicyAddReqAction
{

	List<String>	list;
	List<String>	policyList;
	List<String>	bankList;
	List<String>	insurancCompanyList;
	AuthLoginDao	dao	   = new AuthLoginDao();
	List<String>	RmName	= new ArrayList<String>();

	public String execute()
	{
		String flag = "flag";

		try
		{
			SettingDao settingDao = new SettingDao();

			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession ss = ServletActionContext.getRequest().getSession();
			sessionBean sessionBean = (sessionBean) ss.getAttribute("sessionBean");
			/*
			 * 2:Corporate Officer 3:Zonal Officer 4:Regional Managers 5:Branch Managers
			 * 6:Relationship Manager
			 */

			String userType = sessionBean.getUserType();

			System.out.println("user type in REqaddnewpolicy" + userType);

			if (userType.equalsIgnoreCase("6"))
			{
				RmName = settingDao.getRmName();
			}
			else if (userType.equalsIgnoreCase("5"))
			{
				RmName = settingDao.getBranchManager();
			}
			else if (userType.equalsIgnoreCase("4"))
			{
				RmName = settingDao.getRegionalManagers();
			}
			else if (userType.equalsIgnoreCase("3"))
			{
				RmName = settingDao.getZonalOfficer();
			}
			else if (userType.equalsIgnoreCase("2"))
			{
				RmName = settingDao.getCorporateOfficer();
			}

			list = dao.getClientName();
			policyList = dao.getPolicyName();
			bankList = dao.getBankList();
			insurancCompanyList = dao.getInsuranceCompanyList();
			
			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return flag;

	}

	public List<String> getList()
	{
		return list;
	}

	public void setList(List<String> list)
	{
		this.list = list;
	}

	public List<String> getPolicyList()
	{
		return policyList;
	}

	public void setPolicyList(List<String> policyList)
	{
		this.policyList = policyList;
	}

	public List<String> getRmName()
	{
		return RmName;
	}

	public void setRmName(List<String> rmName)
	{
		RmName = rmName;
	}

	public List<String> getBankList()
	{
		return bankList;
	}

	public void setBankList(List<String> bankList)
	{
		this.bankList = bankList;
	}

	public List<String> getInsurancCompanyList()
    {
    	return insurancCompanyList;
    }

	public void setInsurancCompanyList(List<String> insurancCompanyList)
    {
    	this.insurancCompanyList = insurancCompanyList;
    }
}
