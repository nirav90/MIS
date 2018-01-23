package com.mis.formBean;

public class BusinessDetailForm
{

	private String	policyName;

	private String	insuredName;

	private double	totalBrokarege;

	private String	rmName;

	private int	    clientID;

	private String	bankName;

	private boolean	isBusinessDone	= false;

	private String	status;

	public String getPolicyName()
	{
		return policyName;
	}

	public void setPolicyName(String policyName)
	{
		this.policyName = policyName;
	}

	public String getInsuredName()
	{
		return insuredName;
	}

	public void setInsuredName(String insuredName)
	{
		this.insuredName = insuredName;
	}

	public double getTotalBrokarege()
	{
		return totalBrokarege;
	}

	public void setTotalBrokarege(double totalBrokarege)
	{
		this.totalBrokarege = totalBrokarege;
	}

	public int getClientID()
	{
		return clientID;
	}

	public void setClientID(int clientID)
	{
		this.clientID = clientID;
	}

	public String getRmName()
	{
		return rmName;
	}

	public void setRmName(String rmName)
	{
		this.rmName = rmName;
	}

	public String getBankName()
	{
		return bankName;
	}

	public void setBankName(String bankName)
	{
		this.bankName = bankName;
	}

	public boolean isBusinessDone()
	{
		return isBusinessDone;
	}

	public void setBusinessDone(boolean isBusinessDone)
	{
		this.isBusinessDone = isBusinessDone;
	}

	public String getStatus()
    {
    	return status;
    }

	public void setStatus(String status)
    {
    	this.status = status;
    }

}
