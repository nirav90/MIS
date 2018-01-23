package com.mis.formBean;

import java.util.Date;

public class ClientDetailForm
{

	/**
	 *  client detail parameters  
	 *  
	 */
	private int	   clientID;
	private String	insuredName;
	private String	address;
	private String	pincode;
	private String	contactPerson;
	private String	officeNo;
	private String	faxNo;
	private String	mobileNo;
	private String	RmName;
	private String	email;

	/**
	 *  for client and policy detail list brokrage total and total suminsured  in dashboard  
	 *  
	 */
	private String	policyName;
	private double	totalSuminsured;
	private double	totalBrokerage;
	private String	insuranceComapnyName;
	private Date dateOfInward;
	
	public String getInsuredName()
	{
		return insuredName;
	}

	public void setInsuredName(String insuredName)
	{
		this.insuredName = insuredName;
	}

	public String getAddress()
	{
		return address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

	public String getPincode()
	{
		return pincode;
	}

	public void setPincode(String pincode)
	{
		this.pincode = pincode;
	}

	public String getContactPerson()
	{
		return contactPerson;
	}

	public void setContactPerson(String contactPerson)
	{
		this.contactPerson = contactPerson;
	}

	public String getOfficeNo()
	{
		return officeNo;
	}

	public void setOfficeNo(String officeNo)
	{
		this.officeNo = officeNo;
	}

	public String getFaxNo()
	{
		return faxNo;
	}

	public void setFaxNo(String faxNo)
	{
		this.faxNo = faxNo;
	}

	public String getMobileNo()
	{
		return mobileNo;
	}

	public void setMobileNo(String mobileNo)
	{
		this.mobileNo = mobileNo;
	}

	public String getRmName()
	{
		return RmName;
	}

	public void setRmName(String rmName)
	{
		RmName = rmName;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public int getClientID()
	{
		return clientID;
	}

	public void setClientID(int clientID)
	{
		this.clientID = clientID;
	}

	public double getTotalBrokerage()
	{
		return totalBrokerage;
	}

	public void setTotalBrokerage(double totalBrokerage)
	{
		this.totalBrokerage = totalBrokerage;
	}

	public String getPolicyName()
	{
		return policyName;
	}

	public void setPolicyName(String policyName)
	{
		this.policyName = policyName;
	}

	public double getTotalSuminsured()
	{
		return totalSuminsured;
	}

	public void setTotalSuminsured(double totalSuminsured)
	{
		this.totalSuminsured = totalSuminsured;
	}

	public String getInsuranceComapnyName()
	{
		return insuranceComapnyName;
	}

	public void setInsuranceComapnyName(String insuranceComapnyName)
	{
		this.insuranceComapnyName = insuranceComapnyName;
	}

	public Date getDateOfInward()
    {
    	return dateOfInward;
    }

	public void setDateOfInward(Date dateOfInward)
    {
    	this.dateOfInward = dateOfInward;
    }

}
