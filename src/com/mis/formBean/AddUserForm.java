package com.mis.formBean;

public class AddUserForm
{

	private int	   userDetailID;
	private String	email;
	private String	userID;
	private String	password;
	private String	designation;
	private String	phone;
	private String	name;
	private String	branchName;
	private String	reportingManager;
	private String	deskNo;

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getUserID()
	{
		return userID;
	}

	public void setUserID(String userID)
	{
		this.userID = userID;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getDesignation()
	{
		return designation;
	}

	public void setDesignation(String designation)
	{
		this.designation = designation;
	}

	public String getPhone()
	{
		return phone;
	}

	public void setPhone(String phone)
	{
		this.phone = phone;
	}

	public int getUserDetailID()
	{
		return userDetailID;
	}

	public void setUserDetailID(int userDetailID)
	{
		this.userDetailID = userDetailID;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getBranchName()
	{
		return branchName;
	}

	public void setBranchName(String branchName)
	{
		this.branchName = branchName;
	}

	public String getReportingManager()
	{
		return reportingManager;
	}

	public void setReportingManager(String reportingManager)
	{
		this.reportingManager = reportingManager;
	}

	public String getDeskNo()
	{
		return deskNo;
	}

	public void setDeskNo(String deskNo)
	{
		this.deskNo = deskNo;
	}

}
