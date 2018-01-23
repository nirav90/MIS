package com.mis.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.ClientPolicyListDao;
import com.mis.domain.General;
import com.mis.domain.PolicyDetailDomain;
import com.mis.formBean.BrokerageDetailForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.CoInsuranceDetailForm;
import com.mis.formBean.HypothicationDetailForm;
import com.mis.formBean.PaymentDetailForm;
import com.mis.formBean.PolicyDetailForm;
import com.mis.formBean.SumInsuredForm;
import com.mis.reports.Reports;
import com.opensymphony.xwork2.ActionSupport;

public class ReportAction extends ActionSupport
{

	ClientPolicyListDao	          dao	= new ClientPolicyListDao();
	List<ClientDetailForm>	      clientDetailForms;
	List<PolicyDetailForm>	      list;
	List<BrokerageDetailForm>	  brokerageDetailForms;
	List<HypothicationDetailForm>	hypothicationDetailForms;
	List<CoInsuranceDetailForm>	  coInsuranceDetailForms;
	List<PaymentDetailForm>	      paymentDetailForms;
	List<SumInsuredForm>	      sumInsuredForms;
	public PolicyDetailDomain	  policyDetailDomain;

	public String reportGenerate()
	{
		String flag = "false";
		try
		{
			policyDetailDomain = dao.getReportData();
			brokerageDetailForms = policyDetailDomain.getBrokerageDetailFormList();
			hypothicationDetailForms = policyDetailDomain.getHypothicationDetailFormList();
			coInsuranceDetailForms = policyDetailDomain.getInsuranceDetailFormList();
			paymentDetailForms = policyDetailDomain.getPaymentDetailFormlist();
			sumInsuredForms = policyDetailDomain.getSumInsuredFormList();
			list = policyDetailDomain.getPolicyDetailFormlist();
			clientDetailForms = policyDetailDomain.getClientDetailFormlist();
			HttpServletResponse response = ServletActionContext.getResponse();
			Reports reports = new Reports();
			String path = reports.generateExcel(list, clientDetailForms, brokerageDetailForms, hypothicationDetailForms, coInsuranceDetailForms, paymentDetailForms, sumInsuredForms);
			reports.getSavedUploadedFile(path, response, "test.xlsx");
			flag = "true";
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return flag;
	}

	public String getReportPolicyStartDate()
	{
		String flag = "false";

		try
		{

			HttpServletRequest request = ServletActionContext.getRequest();

			String startDate = request.getParameter("startDate");

			String endDate = request.getParameter("endDate");

			String s1 = General.dateParse(startDate);
			String s2 = General.dateParse(endDate);
			policyDetailDomain = dao.getReportPolicyStartDate(s1, s2);
			brokerageDetailForms = policyDetailDomain.getBrokerageDetailFormList();
			hypothicationDetailForms = policyDetailDomain.getHypothicationDetailFormList();
			coInsuranceDetailForms = policyDetailDomain.getInsuranceDetailFormList();
			paymentDetailForms = policyDetailDomain.getPaymentDetailFormlist();
			sumInsuredForms = policyDetailDomain.getSumInsuredFormList();
			list = policyDetailDomain.getPolicyDetailFormlist();
			clientDetailForms = policyDetailDomain.getClientDetailFormlist();
			HttpServletResponse response = ServletActionContext.getResponse();
			Reports reports = new Reports();
			String path = reports.generateExcel(list, clientDetailForms, brokerageDetailForms, hypothicationDetailForms, coInsuranceDetailForms, paymentDetailForms, sumInsuredForms);
			reports.getSavedUploadedFile(path, response, "test.xlsx");

			flag = "true";
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return flag;
	}

	public String getReportByDateOfInward()
	{
		String flag = "false";

		try
		{

			HttpServletRequest request = ServletActionContext.getRequest();

			String startDate = request.getParameter("startDate");

			String endDate = request.getParameter("endDate");

			String s1 = General.dateParse(startDate);
			String s2 = General.dateParse(endDate);
			policyDetailDomain = dao.getReportByDateOfInward(s1, s2);
			brokerageDetailForms = policyDetailDomain.getBrokerageDetailFormList();
			hypothicationDetailForms = policyDetailDomain.getHypothicationDetailFormList();
			coInsuranceDetailForms = policyDetailDomain.getInsuranceDetailFormList();
			paymentDetailForms = policyDetailDomain.getPaymentDetailFormlist();
			sumInsuredForms = policyDetailDomain.getSumInsuredFormList();
			list = policyDetailDomain.getPolicyDetailFormlist();
			clientDetailForms = policyDetailDomain.getClientDetailFormlist();
			HttpServletResponse response = ServletActionContext.getResponse();
			Reports reports = new Reports();
			String path = reports.generateExcel(list, clientDetailForms, brokerageDetailForms, hypothicationDetailForms, coInsuranceDetailForms, paymentDetailForms, sumInsuredForms);
			reports.getSavedUploadedFile(path, response, "test.xlsx");

			flag = "true";
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return flag;
	}

	public String getReportByPolicyEndDate()
	{
		String flag = "false";
		try
		{

			HttpServletRequest request = ServletActionContext.getRequest();

			String startDate = request.getParameter("startDate");

			String endDate = request.getParameter("endDate");

			String s1 = General.dateParse(startDate);
			String s2 = General.dateParse(endDate);
			policyDetailDomain = dao.getReportByPolicyEndDate(s1, s2);
			brokerageDetailForms = policyDetailDomain.getBrokerageDetailFormList();
			hypothicationDetailForms = policyDetailDomain.getHypothicationDetailFormList();
			coInsuranceDetailForms = policyDetailDomain.getInsuranceDetailFormList();
			paymentDetailForms = policyDetailDomain.getPaymentDetailFormlist();
			sumInsuredForms = policyDetailDomain.getSumInsuredFormList();
			list = policyDetailDomain.getPolicyDetailFormlist();
			clientDetailForms = policyDetailDomain.getClientDetailFormlist();
			HttpServletResponse response = ServletActionContext.getResponse();
			Reports reports = new Reports();
			String path = reports.generateExcel(list, clientDetailForms, brokerageDetailForms, hypothicationDetailForms, coInsuranceDetailForms, paymentDetailForms, sumInsuredForms);
			reports.getSavedUploadedFile(path, response, "test.xlsx");

			flag = "true";
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return flag;
	}

	public String getReportByInsuredName()
	{
		String flag = "false";
		try
		{
			HttpServletRequest request = ServletActionContext.getRequest();
			String insuredName = request.getParameter("insuredName");

			policyDetailDomain = dao.getReportByInsuredName(insuredName);
			brokerageDetailForms = policyDetailDomain.getBrokerageDetailFormList();
			hypothicationDetailForms = policyDetailDomain.getHypothicationDetailFormList();
			coInsuranceDetailForms = policyDetailDomain.getInsuranceDetailFormList();
			paymentDetailForms = policyDetailDomain.getPaymentDetailFormlist();
			sumInsuredForms = policyDetailDomain.getSumInsuredFormList();
			list = policyDetailDomain.getPolicyDetailFormlist();
			clientDetailForms = policyDetailDomain.getClientDetailFormlist();
			HttpServletResponse response = ServletActionContext.getResponse();
			Reports reports = new Reports();
			String path = reports.generateExcel(list, clientDetailForms, brokerageDetailForms, hypothicationDetailForms, coInsuranceDetailForms, paymentDetailForms, sumInsuredForms);
			reports.getSavedUploadedFile(path, response, "test.xlsx");

			flag = "true";
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return flag;

	}

	public String getReportByRelationManager()
	{
		String flag = "false";
		try
		{
			HttpServletRequest request = ServletActionContext.getRequest();
			String RMName = request.getParameter("relationManager");

			policyDetailDomain = dao.getReportByRelationManager(RMName);
			brokerageDetailForms = policyDetailDomain.getBrokerageDetailFormList();
			hypothicationDetailForms = policyDetailDomain.getHypothicationDetailFormList();
			coInsuranceDetailForms = policyDetailDomain.getInsuranceDetailFormList();
			paymentDetailForms = policyDetailDomain.getPaymentDetailFormlist();
			sumInsuredForms = policyDetailDomain.getSumInsuredFormList();
			list = policyDetailDomain.getPolicyDetailFormlist();
			clientDetailForms = policyDetailDomain.getClientDetailFormlist();
			HttpServletResponse response = ServletActionContext.getResponse();
			Reports reports = new Reports();
			String path = reports.generateExcel(list, clientDetailForms, brokerageDetailForms, hypothicationDetailForms, coInsuranceDetailForms, paymentDetailForms, sumInsuredForms);
			reports.getSavedUploadedFile(path, response, "test.xlsx");

			flag = "true";
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}
		return flag;
	}

	public String getReportByInsuranceCompany()
	{
		String flag = "false";
		try
		{

			HttpServletRequest request = ServletActionContext.getRequest();
			String InsuranceCompany = request.getParameter("InsuranceCompany");

			policyDetailDomain = dao.getReportByInsuranceCompany(InsuranceCompany);
			brokerageDetailForms = policyDetailDomain.getBrokerageDetailFormList();
			hypothicationDetailForms = policyDetailDomain.getHypothicationDetailFormList();
			coInsuranceDetailForms = policyDetailDomain.getInsuranceDetailFormList();
			paymentDetailForms = policyDetailDomain.getPaymentDetailFormlist();
			sumInsuredForms = policyDetailDomain.getSumInsuredFormList();
			list = policyDetailDomain.getPolicyDetailFormlist();
			clientDetailForms = policyDetailDomain.getClientDetailFormlist();
			HttpServletResponse response = ServletActionContext.getResponse();
			Reports reports = new Reports();
			String path = reports.generateExcel(list, clientDetailForms, brokerageDetailForms, hypothicationDetailForms, coInsuranceDetailForms, paymentDetailForms, sumInsuredForms);
			reports.getSavedUploadedFile(path, response, "test.xlsx");

			flag = "true";
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return flag;
	}

	public String getReportByCustom()
	{
		String flag = "false";
		try
		{

			HttpServletRequest request = ServletActionContext.getRequest();

			String insuredNameCustom = request.getParameter("insuredNameCustom");
			String relationManagerCustom = request.getParameter("relationManagerCustom");
			String insuredCompanyCustom = request.getParameter("insuredCompanyCustom");
			String PolicyStartDateCustom = request.getParameter("PolicyStartDateCustom");
			String DateOfInwardCustom = request.getParameter("DateOfInwardCustom");
			String PolicyEndDateCustom = request.getParameter("PolicyEndDateCustom");

			policyDetailDomain = dao.getReportByCustom(insuredNameCustom, relationManagerCustom, insuredCompanyCustom, PolicyStartDateCustom, DateOfInwardCustom, PolicyEndDateCustom);
			brokerageDetailForms = policyDetailDomain.getBrokerageDetailFormList();
			hypothicationDetailForms = policyDetailDomain.getHypothicationDetailFormList();
			coInsuranceDetailForms = policyDetailDomain.getInsuranceDetailFormList();
			paymentDetailForms = policyDetailDomain.getPaymentDetailFormlist();
			sumInsuredForms = policyDetailDomain.getSumInsuredFormList();
			list = policyDetailDomain.getPolicyDetailFormlist();
			clientDetailForms = policyDetailDomain.getClientDetailFormlist();
			HttpServletResponse response = ServletActionContext.getResponse();
			Reports reports = new Reports();
			String path = reports.generateExcel(list, clientDetailForms, brokerageDetailForms, hypothicationDetailForms, coInsuranceDetailForms, paymentDetailForms, sumInsuredForms);
			reports.getSavedUploadedFile(path, response, "test.xlsx");
			flag = "true";
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return flag;
	}

	public List<ClientDetailForm> getClientDetailForms()
	{
		return clientDetailForms;
	}

	public void setClientDetailForms(List<ClientDetailForm> clientDetailForms)
	{
		this.clientDetailForms = clientDetailForms;
	}

	public List<PolicyDetailForm> getList()
	{
		return list;
	}

	public void setList(List<PolicyDetailForm> list)
	{
		this.list = list;
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

}
