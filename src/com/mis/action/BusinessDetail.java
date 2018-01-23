package com.mis.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.BusinessDetailDao;
import com.mis.dao.DbOperation;
import com.mis.domain.General;
import com.mis.domain.PolicyDetailDomain;
import com.mis.formBean.BusinessDetailForm;
import com.mis.formBean.BusinessStatusForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.PolicyDetailForm;
import com.opensymphony.xwork2.ActionSupport;

public class BusinessDetail extends ActionSupport
{

	List<PolicyDetailForm>	  policyDetailForms;
	List<ClientDetailForm>	  clientDetailForms;
	List<BusinessDetailForm>	businessDetailForms;
	List<BusinessStatusForm>	businessStatusForms;
	List<String>	          insuredName	   = new ArrayList<String>();
	List<String>	          RmName	       = new ArrayList<String>();
	List<String>	          InsuranceCompany	= new ArrayList<String>();

	public PolicyDetailDomain	policyDetailDomain;

	public String businessDashBoard()
	{
		String flag = "false";
		try
		{
			System.out.println("in action");
			BusinessDetailDao dao = new BusinessDetailDao();
			policyDetailDomain = dao.getBusinessDashboard();
			for (int i = 0; i < policyDetailDomain.getClientDetailFormlist().size(); i++)
			{

				insuredName.add(policyDetailDomain.getClientDetailFormlist().get(i).getInsuredName());
			}
			for (int i = 0; i < policyDetailDomain.getClientDetailFormlist().size(); i++)
			{

				System.out.println(policyDetailDomain.getClientDetailFormlist().get(i).getRmName());
				RmName.add(policyDetailDomain.getClientDetailFormlist().get(i).getRmName());
			}
			for (int i = 0; i < policyDetailDomain.getPolicyDetailFormlist().size(); i++)
			{

				System.out.println(policyDetailDomain.getPolicyDetailFormlist().get(i).getInsuranceCompany());
				InsuranceCompany.add(policyDetailDomain.getPolicyDetailFormlist().get(i).getInsuranceCompany());
			}

			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}

	public String searchByDate()
	{

		String flag = "false";
		BusinessDetailDao dao = new BusinessDetailDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String s1 = General.dateParse(startDate);
		String s2 = General.dateParse(endDate);
		businessDetailForms = dao.searchByDate(s1, s2);
		flag = "true";
		return flag;

	}

	public String searchByInsuredName()
	{

		String flag = "false";
		BusinessDetailDao dao = new BusinessDetailDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String insuredName = request.getParameter("insuredName");
		businessDetailForms = dao.searchByInsuredName(insuredName);
		System.out.println("sixxxxxxxxxxxxxxxxxxxx" + businessDetailForms.size());
		flag = "true";
		return flag;

	}

	public String searchByRelationManager()
	{

		String flag = "false";
		BusinessDetailDao dao = new BusinessDetailDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String relationManager = request.getParameter("relationManager");
		System.out.println("name of relation manager " + relationManager);
		businessDetailForms = dao.searchByRelationManager(relationManager);
		flag = "true";
		return flag;

	}

	public String searchByInsuranceCompany()
	{

		String flag = "false";
		BusinessDetailDao dao = new BusinessDetailDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String InsuranceCompany = request.getParameter("InsuranceCompany");
		System.out.println("insurance company name" + InsuranceCompany);
		businessDetailForms = dao.searchByInsuranceCompany(InsuranceCompany);
		flag = "true";
		return flag;

	}

	public String searchByPolicyStartDate()
	{

		String flag = "false";
		BusinessDetailDao dao = new BusinessDetailDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String s1 = General.dateParse(startDate);
		String s2 = General.dateParse(endDate);
		businessDetailForms = dao.searchByPolicyStartDate(s1, s2);
		flag = "true";
		return flag;

	}

	public String searchByPolicyEndDate()
	{

		String flag = "false";
		BusinessDetailDao dao = new BusinessDetailDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String s1 = General.dateParse(startDate);
		String s2 = General.dateParse(endDate);
		businessDetailForms = dao.searchByPolicyEndDate(s1, s2);
		flag = "true";
		return flag;

	}

	public String searchByCustom()
	{

		String flag = "false";
		BusinessDetailDao dao = new BusinessDetailDao();
		HttpServletRequest request = ServletActionContext.getRequest();

		String insuredNameCustom = request.getParameter("insuredNameCustom");
		String relationManagerCustom = request.getParameter("relationManagerCustom");
		String insuredCompanyCustom = request.getParameter("insuredCompanyCustom");
		String PolicyStartDateCustom = request.getParameter("PolicyStartDateCustom");
		String DateOfInwardCustom = request.getParameter("DateOfInwardCustom");
		String PolicyEndDateCustom = request.getParameter("PolicyEndDateCustom");

		System.out.println("-----------DATA----------------");
		System.out.println(insuredNameCustom);
		System.out.println(relationManagerCustom);
		System.out.println(insuredCompanyCustom);
		System.out.println(PolicyStartDateCustom);
		System.out.println(DateOfInwardCustom);
		System.out.println(PolicyEndDateCustom);

		businessDetailForms = dao.searchByCustom(insuredNameCustom, relationManagerCustom, insuredCompanyCustom, PolicyStartDateCustom, DateOfInwardCustom, PolicyEndDateCustom);
		flag = "true";
		return flag;

	}

	public String getAllBusiness()
	{
		String flag = "false";

		BusinessDetailDao businessDetailDao = new BusinessDetailDao();

		try
		{

			policyDetailDomain = businessDetailDao.getBusinessDashboard();
			for (int i = 0; i < policyDetailDomain.getClientDetailFormlist().size(); i++)
			{

				insuredName.add(policyDetailDomain.getClientDetailFormlist().get(i).getInsuredName());
			}
			for (int i = 0; i < policyDetailDomain.getClientDetailFormlist().size(); i++)
			{

				System.out.println(policyDetailDomain.getClientDetailFormlist().get(i).getRmName());
				RmName.add(policyDetailDomain.getClientDetailFormlist().get(i).getRmName());
			}
			for (int i = 0; i < policyDetailDomain.getPolicyDetailFormlist().size(); i++)
			{

				System.out.println(policyDetailDomain.getPolicyDetailFormlist().get(i).getInsuranceCompany());
				InsuranceCompany.add(policyDetailDomain.getPolicyDetailFormlist().get(i).getInsuranceCompany());
			}

			businessDetailForms = businessDetailDao.getAllBusiness();

			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return flag;

	}

	public String viewBusinessStatus()
	{

		String flag = "flase";
		try
		{
			BusinessDetailDao businessDetailDao = new BusinessDetailDao();
			HttpServletRequest request = ServletActionContext.getRequest();
			String policyName = request.getParameter("policyName");
			int clientID = Integer.parseInt(request.getParameter("h1"));
			businessStatusForms =  businessDetailDao.viewBusinessStatus(clientID);
			request.setAttribute("size", businessStatusForms.size());
			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return flag;

	}

	public List<PolicyDetailForm> getPolicyDetailForms()
	{
		return policyDetailForms;
	}

	public void setPolicyDetailForms(List<PolicyDetailForm> policyDetailForms)
	{
		this.policyDetailForms = policyDetailForms;
	}

	public List<ClientDetailForm> getClientDetailForms()
	{
		return clientDetailForms;
	}

	public void setClientDetailForms(List<ClientDetailForm> clientDetailForms)
	{
		this.clientDetailForms = clientDetailForms;
	}

	public List<String> getInsuredName()
	{
		return insuredName;
	}

	public void setInsuredName(List<String> insuredName)
	{
		this.insuredName = insuredName;
	}

	public List<String> getRmName()
	{
		return RmName;
	}

	public void setRmName(List<String> rmName)
	{
		RmName = rmName;
	}

	public List<String> getInsuranceCompany()
	{
		return InsuranceCompany;
	}

	public void setInsuranceCompany(List<String> insuranceCompany)
	{
		InsuranceCompany = insuranceCompany;
	}

	public List<BusinessDetailForm> getBusinessDetailForms()
	{
		return businessDetailForms;
	}

	public void setBusinessDetailForms(List<BusinessDetailForm> businessDetailForms)
	{
		this.businessDetailForms = businessDetailForms;
	}

	public List<BusinessStatusForm> getBusinessStatusForms()
    {
    	return businessStatusForms;
    }

	public void setBusinessStatusForms(List<BusinessStatusForm> businessStatusForms)
    {
    	this.businessStatusForms = businessStatusForms;
    }

}
