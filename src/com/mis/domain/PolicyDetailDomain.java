package com.mis.domain;

import java.io.Serializable;
import java.util.List;

import com.mis.formBean.BrokerageDetailForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.CoInsuranceDetailForm;
import com.mis.formBean.HypothicationDetailForm;
import com.mis.formBean.PaymentDetailForm;
import com.mis.formBean.PolicyDetailForm;
import com.mis.formBean.SumInsuredForm;

public class PolicyDetailDomain implements Serializable
{

	/**
	 * 
	 */
	private static final long	          serialVersionUID	= 1L;
	private List<SumInsuredForm>	      sumInsuredFormList;
	private List<BrokerageDetailForm>	  brokerageDetailFormList;
	private List<HypothicationDetailForm>	hypothicationDetailFormList;
	private List<CoInsuranceDetailForm>	  insuranceDetailFormList;
	private List<PaymentDetailForm>	      paymentDetailFormlist;
	private List<PolicyDetailForm>	      policyDetailFormlist;
	private List<ClientDetailForm>	      clientDetailFormlist;

	public List<SumInsuredForm> getSumInsuredFormList()
	{
		return sumInsuredFormList;
	}

	public void setSumInsuredFormList(List<SumInsuredForm> sumInsuredFormList)
	{
		this.sumInsuredFormList = sumInsuredFormList;
	}

	public List<BrokerageDetailForm> getBrokerageDetailFormList()
	{
		return brokerageDetailFormList;
	}

	public void setBrokerageDetailFormList(List<BrokerageDetailForm> brokerageDetailFormList)
	{
		this.brokerageDetailFormList = brokerageDetailFormList;
	}

	public List<HypothicationDetailForm> getHypothicationDetailFormList()
	{
		return hypothicationDetailFormList;
	}

	public void setHypothicationDetailFormList(List<HypothicationDetailForm> hypothicationDetailFormList)
	{
		this.hypothicationDetailFormList = hypothicationDetailFormList;
	}

	public List<CoInsuranceDetailForm> getInsuranceDetailFormList()
	{
		return insuranceDetailFormList;
	}

	public void setInsuranceDetailFormList(List<CoInsuranceDetailForm> insuranceDetailFormList)
	{
		this.insuranceDetailFormList = insuranceDetailFormList;
	}

	public List<PaymentDetailForm> getPaymentDetailFormlist()
	{
		return paymentDetailFormlist;
	}

	public void setPaymentDetailFormlist(List<PaymentDetailForm> paymentDetailFormlist)
	{
		this.paymentDetailFormlist = paymentDetailFormlist;
	}

	public List<PolicyDetailForm> getPolicyDetailFormlist()
	{
		return policyDetailFormlist;
	}

	public void setPolicyDetailFormlist(List<PolicyDetailForm> policyDetailFormlist)
	{
		this.policyDetailFormlist = policyDetailFormlist;
	}

	public List<ClientDetailForm> getClientDetailFormlist()
	{
		return clientDetailFormlist;
	}

	public void setClientDetailFormlist(List<ClientDetailForm> clientDetailFormlist)
	{
		this.clientDetailFormlist = clientDetailFormlist;
	}

}
