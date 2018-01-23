package com.mis.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.AuthLoginDao;
import com.mis.dao.ClientPolicyListDao;
import com.mis.domain.PolicyDetailDomain;
import com.mis.formBean.BrokerageDetailForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.CoInsuranceDetailForm;
import com.mis.formBean.HypothicationDetailForm;
import com.mis.formBean.PaymentDetailForm;
import com.mis.formBean.PolicyDetailForm;
import com.mis.formBean.SumInsuredForm;
import com.mis.reports.Reports;

public class ClientPolicyList
{

	ClientPolicyListDao	          dao	= new ClientPolicyListDao();
	AuthLoginDao	              dao1	= new AuthLoginDao();
	ClientDetailForm	          clientDetailForm;
	PolicyDetailForm	          policyDetailForm;

	List<String>	              clientList;
	List<String>	              policyList;
	List<ClientDetailForm>	      clientDetailForms;
	List<PolicyDetailForm>	      list;
	List<BrokerageDetailForm>	  brokerageDetailForms;
	List<HypothicationDetailForm>	hypothicationDetailForms;
	List<CoInsuranceDetailForm>	  coInsuranceDetailForms;
	List<PaymentDetailForm>	      paymentDetailForms;
	List<SumInsuredForm>	      sumInsuredForms;

	public PolicyDetailDomain	  policyDetailDomain;

	public String execute()
	{
		String flag = "false";

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		int id = Integer.parseInt(request.getParameter("h1"));
		request.setAttribute("clientID", id);

		list = dao.getClientPolicyList(id);

		flag = "true";

		return flag;

	}

	public String viewPolicyDetail()
	{
		String flag = "false";

		try
		{

			clientList = dao1.getClientName();
			policyList = dao1.getPolicyName();

			HttpServletRequest request = ServletActionContext.getRequest();
			int id = Integer.parseInt(request.getParameter("h1"));

			request.setAttribute("clientID", id);

			String policyName = request.getParameter("policyName");
			request.setAttribute("policyName", policyName);

			System.out.println("id :" + id);
			System.out.println("policy Name :" + policyName);

			List<String> listOfPara = dao.getSumInsuredParam(policyName);

			for (int i = 0; i < listOfPara.size(); i++)
            {
	            
				listOfPara.get(i);
            }
			
			System.out.println("size of listofPARA:::" + listOfPara.size());

			policyDetailDomain = dao.getClientPolicyDetailShow(policyName, id);

			brokerageDetailForms = policyDetailDomain.getBrokerageDetailFormList();
			hypothicationDetailForms = policyDetailDomain.getHypothicationDetailFormList();
			coInsuranceDetailForms = policyDetailDomain.getInsuranceDetailFormList();
			paymentDetailForms = policyDetailDomain.getPaymentDetailFormlist();
			sumInsuredForms = policyDetailDomain.getSumInsuredFormList();
			list = policyDetailDomain.getPolicyDetailFormlist();
			clientDetailForms = policyDetailDomain.getClientDetailFormlist();
			request.setAttribute("clientID", id);
			request.setAttribute("policyName", policyName);

			flag = "true";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}

	public void getSuminsuredInnerJsp() throws ServletException, IOException
	{

		System.out.println("in new action");
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		String policyName = (String) request.getParameter("policyName");
		int id = Integer.parseInt(request.getParameter("id"));

		System.out.println(policyName + id);

		policyDetailDomain = dao.getClientPolicyDetailShow(policyName, id);

		sumInsuredForms = policyDetailDomain.getSumInsuredFormList();

		Map< String, ArrayList<SumInsuredForm>> map = new HashMap<String, ArrayList<SumInsuredForm>>();
		map.put("map", (ArrayList<SumInsuredForm>) sumInsuredForms);
		
		request.setAttribute("sumInsuredForms", sumInsuredForms);
		request.setAttribute("map", map);

		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/viewdiv/" + policyName + ".jsp");
		dispatcher.forward(request, response);

	}

	public PolicyDetailForm getPolicyDetailForm()
	{
		return policyDetailForm;
	}

	public void setPolicyDetailForm(PolicyDetailForm policyDetailForm)
	{
		this.policyDetailForm = policyDetailForm;
	}

	public List<PolicyDetailForm> getList()
	{
		return list;
	}

	public void setList(List<PolicyDetailForm> list)
	{
		this.list = list;
	}

	public PolicyDetailDomain getPolicyDetailDomain()
	{
		return policyDetailDomain;
	}

	public void setPolicyDetailDomain(PolicyDetailDomain policyDetailDomain)
	{
		this.policyDetailDomain = policyDetailDomain;
	}

	public List<BrokerageDetailForm> getBrokerageDetailForms()
	{
		return brokerageDetailForms;
	}

	public void setBrokerageDetailForms(List<BrokerageDetailForm> brokerageDetailForms)
	{
		this.brokerageDetailForms = brokerageDetailForms;
	}

	public List<HypothicationDetailForm> getHypothicationDetailForms()
	{
		return hypothicationDetailForms;
	}

	public void setHypothicationDetailForms(List<HypothicationDetailForm> hypothicationDetailForms)
	{
		this.hypothicationDetailForms = hypothicationDetailForms;
	}

	public List<CoInsuranceDetailForm> getCoInsuranceDetailForms()
	{
		return coInsuranceDetailForms;
	}

	public void setCoInsuranceDetailForms(List<CoInsuranceDetailForm> coInsuranceDetailForms)
	{
		this.coInsuranceDetailForms = coInsuranceDetailForms;
	}

	public List<PaymentDetailForm> getPaymentDetailForms()
	{
		return paymentDetailForms;
	}

	public void setPaymentDetailForms(List<PaymentDetailForm> paymentDetailForms)
	{
		this.paymentDetailForms = paymentDetailForms;
	}

	public List<SumInsuredForm> getSumInsuredForms()
	{
		return sumInsuredForms;
	}

	public void setSumInsuredForms(List<SumInsuredForm> sumInsuredForms)
	{
		this.sumInsuredForms = sumInsuredForms;
	}

	public List<String> getClientList()
	{
		return clientList;
	}

	public void setClientList(List<String> clientList)
	{
		this.clientList = clientList;
	}

	public List<String> getPolicyList()
	{
		return policyList;
	}

	public void setPolicyList(List<String> policyList)
	{
		this.policyList = policyList;
	}

	public List<ClientDetailForm> getClientDetailForms()
	{
		return clientDetailForms;
	}

	public void setClientDetailForms(List<ClientDetailForm> clientDetailForms)
	{
		this.clientDetailForms = clientDetailForms;
	}

	public ClientDetailForm getClientDetailForm()
	{
		return clientDetailForm;
	}

	public void setClientDetailForm(ClientDetailForm clientDetailForm)
	{
		this.clientDetailForm = clientDetailForm;
	}

}
