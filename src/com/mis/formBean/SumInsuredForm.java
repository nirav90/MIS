package com.mis.formBean;

public class SumInsuredForm
{

	private String	particulars;
	private int	   sumInsINR;
	private double	policyRate	                = 0.0;
	private double	serviceTax	                = 0.0;
	private int	   StampDuty;
	private double	discount	                = 0.0;
	private double	premiumBeforeTerroAndTax	= 0.0;
	private double	terrorismPremium	        = 0.0;
	private double	premiumNetOfServiceTax	    = 0.0;
	private int	   number;
	private double	premiumPayable	            = 0.00;
	private String	dateOfBirth;
	private double	ownDamagePremium	        = 0.0;
	private double	tpPremium	                = 0.0;
	private double	premiumEligibleForBrokerage	= 0.0;
	private double	brokerage	                = 0.0;
	private double	brokerageAmount	            = 0.0;
	private String	renewalDate;
	private int	   noOfWorkers;
	private int	   salaryPM;
	private double	totalSumInsuredPerAnnum	    = 0.0;
	private double	rate	                    = 0.0;
	private double	totalPremiumePaid	        = 0.0;

	public String getParticulars()
	{
		return particulars;
	}

	public void setParticulars(String particulars)
	{
		this.particulars = particulars;
	}

	public int getSumInsINR()
	{
		return sumInsINR;
	}

	public void setSumInsINR(int sumInsINR)
	{
		this.sumInsINR = sumInsINR;
	}

	public double getPolicyRate()
	{
		return policyRate;
	}

	public void setPolicyRate(double policyRate)
	{
		this.policyRate = policyRate;
	}

	public double getServiceTax()
	{
		return serviceTax;
	}

	public void setServiceTax(double serviceTax)
	{
		this.serviceTax = serviceTax;
	}

	public int getStampDuty()
	{
		return StampDuty;
	}

	public void setStampDuty(int stampDuty)
	{
		StampDuty = stampDuty;
	}

	public double getDiscount()
	{
		return discount;
	}

	public void setDiscount(double discount)
	{
		this.discount = discount;
	}

	public double getPremiumBeforeTerroAndTax()
	{
		return premiumBeforeTerroAndTax;
	}

	public void setPremiumBeforeTerroAndTax(double premiumBeforeTerroAndTax)
	{
		this.premiumBeforeTerroAndTax = premiumBeforeTerroAndTax;
	}

	public double getTerrorismPremium()
	{
		return terrorismPremium;
	}

	public void setTerrorismPremium(double terrorismPremium)
	{
		this.terrorismPremium = terrorismPremium;
	}

	public double getPremiumNetOfServiceTax()
	{
		return premiumNetOfServiceTax;
	}

	public void setPremiumNetOfServiceTax(double premiumNetOfServiceTax)
	{
		this.premiumNetOfServiceTax = premiumNetOfServiceTax;
	}

	public int getNumber()
	{
		return number;
	}

	public void setNumber(int number)
	{
		this.number = number;
	}

	public double getPremiumPayable()
	{
		return premiumPayable;
	}

	public void setPremiumPayable(double premiumPayable)
	{
		this.premiumPayable = premiumPayable;
	}

	public String getDateOfBirth()
	{
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth)
	{
		this.dateOfBirth = dateOfBirth;
	}

	public double getOwnDamagePremium()
	{
		return ownDamagePremium;
	}

	public void setOwnDamagePremium(double ownDamagePremium)
	{
		this.ownDamagePremium = ownDamagePremium;
	}

	public double getTpPremium()
	{
		return tpPremium;
	}

	public void setTpPremium(double tpPremium)
	{
		this.tpPremium = tpPremium;
	}

	public double getPremiumEligibleForBrokerage()
	{
		return premiumEligibleForBrokerage;
	}

	public void setPremiumEligibleForBrokerage(double premiumEligibleForBrokerage)
	{
		this.premiumEligibleForBrokerage = premiumEligibleForBrokerage;
	}

	public double getBrokerage()
	{
		return brokerage;
	}

	public void setBrokerage(double brokerage)
	{
		this.brokerage = brokerage;
	}

	public double getBrokerageAmount()
	{
		return brokerageAmount;
	}

	public void setBrokerageAmount(double brokerageAmount)
	{
		this.brokerageAmount = brokerageAmount;
	}

	public String getRenewalDate()
	{
		return renewalDate;
	}

	public void setRenewalDate(String renewalDate)
	{
		this.renewalDate = renewalDate;
	}

	public int getNoOfWorkers()
	{
		return noOfWorkers;
	}

	public void setNoOfWorkers(int noOfWorkers)
	{
		this.noOfWorkers = noOfWorkers;
	}

	public int getSalaryPM()
	{
		return salaryPM;
	}

	public void setSalaryPM(int salaryPM)
	{
		this.salaryPM = salaryPM;
	}

	public double getTotalSumInsuredPerAnnum()
	{
		return totalSumInsuredPerAnnum;
	}

	public void setTotalSumInsuredPerAnnum(double totalSumInsuredPerAnnum)
	{
		this.totalSumInsuredPerAnnum = totalSumInsuredPerAnnum;
	}

	public double getRate()
	{
		return rate;
	}

	public void setRate(double rate)
	{
		this.rate = rate;
	}

	public double getTotalPremiumePaid()
	{
		return totalPremiumePaid;
	}

	public void setTotalPremiumePaid(double totalPremiumePaid)
	{
		this.totalPremiumePaid = totalPremiumePaid;
	}

}
