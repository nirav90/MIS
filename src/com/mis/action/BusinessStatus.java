package com.mis.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.BusinessStatusDao;
import com.mis.domain.General;
import com.mis.formBean.BusinessStatusForm;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BusinessStatus extends ActionSupport implements ModelDriven
{

	BusinessStatusForm	businessStatusForm	= new BusinessStatusForm();
	BusinessStatusDao	businessStatusDao	= new BusinessStatusDao();
	public String addBusinessStatus()
	{
		String flag = "false";

		try
		{

			HttpServletRequest request = ServletActionContext.getRequest();

			int clientId = Integer.parseInt(request.getParameter("clientID"));

			BusinessStatusForm form = new BusinessStatusForm();
			form.setChequeNo(businessStatusForm.getChequeNo());
			form.setChequeDate(General.dateParse(businessStatusForm.getChequeDate()));
			form.setChequeAmount(businessStatusForm.getChequeAmount());
			form.setClientID(clientId);

			if (businessStatusDao.chkStatus(clientId))
			{
				businessStatusDao.updateBusinessStatus(form);
			}
			else
			{
				businessStatusDao.addBusinessStatus(form);
			}

			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return flag;
	}

	@Override
	public Object getModel()
	{
		// TODO Auto-generated method stub
		return businessStatusForm;
	}

}
