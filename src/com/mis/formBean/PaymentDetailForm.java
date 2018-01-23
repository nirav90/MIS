package com.mis.formBean;

public class PaymentDetailForm
{

	private String	modeOfPayment;
	private String	bankName;
	private String	chequeOrDDNo;
	private String	chequeOrDDDate;
	private String	chequeOrDDAmount;

	public String getModeOfPayment()
	{
		return modeOfPayment;
	}
	public void setModeOfPayment(String modeOfPayment)
	{
		this.modeOfPayment = modeOfPayment;
	}
	public String getBankName()
	{
		return bankName;
	}
	public void setBankName(String bankName)
	{
		this.bankName = bankName;
	}
	public String getChequeOrDDNo()
	{
		return chequeOrDDNo;
	}
	public void setChequeOrDDNo(String chequeOrDDNo)
	{
		this.chequeOrDDNo = chequeOrDDNo;
	}
	public String getChequeOrDDDate()
	{
		return chequeOrDDDate;
	}
	public void setChequeOrDDDate(String chequeOrDDDate)
	{
		this.chequeOrDDDate = chequeOrDDDate;
	}
	public String getChequeOrDDAmount()
	{
		return chequeOrDDAmount;
	}
	public void setChequeOrDDAmount(String chequeOrDDAmount)
	{
		this.chequeOrDDAmount = chequeOrDDAmount;
	}

}
