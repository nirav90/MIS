package com.mis.formBean;

public class BrokerageDetailForm
{

	private String	insuranceCompanyName;
	private double	percentage;
	private double	amount;
	private double	shareOfCompany;

	public String getInsuranceCompanyName()
	{
		return insuranceCompanyName;
	}
	public void setInsuranceCompanyName(String insuranceCompanyName)
	{
		this.insuranceCompanyName = insuranceCompanyName;
	}
	public double getPercentage()
	{
		return percentage;
	}
	public void setPercentage(double percentage)
	{
		this.percentage = percentage;
	}
	public double getAmount()
	{
		return amount;
	}
	public void setAmount(double amount)
	{
		this.amount = amount;
	}
	public double getShareOfCompany()
	{
		return shareOfCompany;
	}
	public void setShareOfCompany(double shareOfCompany)
	{
		this.shareOfCompany = shareOfCompany;
	}

}
