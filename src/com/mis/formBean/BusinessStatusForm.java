package com.mis.formBean;

public class BusinessStatusForm
{

	private String	chequeNo;

	private String	chequeDate;

	private double	chequeAmount;

	private int	    clientID;

	private boolean	isBusinessDone;

	public String getChequeNo()
	{
		return chequeNo;
	}

	public void setChequeNo(String chequeNo)
	{
		this.chequeNo = chequeNo;
	}

	public String getChequeDate()
	{
		return chequeDate;
	}

	public void setChequeDate(String chequeDate)
	{
		this.chequeDate = chequeDate;
	}

	public double getChequeAmount()
	{
		return chequeAmount;
	}

	public void setChequeAmount(double chequeAmount)
	{
		this.chequeAmount = chequeAmount;
	}

	public int getClientID()
	{
		return clientID;
	}

	public void setClientID(int clientID)
	{
		this.clientID = clientID;
	}

	public boolean isBusinessDone()
	{
		return isBusinessDone;
	}

	public void setBusinessDone(boolean isBusinessDone)
	{
		this.isBusinessDone = isBusinessDone;
	}

}
