package com.mis.formBean;

public class UserDataShowForm
{

	private int	   userDetailID;

	private String	firstName;
	private String	LastName;
	private String	gender;
	private String	email;
	private String	designation;
	private String	phone;
	private String	username	= null;
	private String	password	= null;
	private String	name;
	private String	branchName;
	private String	reportingManager;
	private String	deskNo;

	public UserDataShowForm()
	{

	}

	public int getUserDetailID()
	{
		return userDetailID;
	}

	public void setUserDetailID(int userDetailID)
	{
		this.userDetailID = userDetailID;
	}

	public String getFirstName()
	{
		return firstName;
	}

	public void setFirstName(String firstName)
	{
		this.firstName = firstName;
	}

	public String getLastName()
	{
		return LastName;
	}

	public void setLastName(String lastName)
	{
		LastName = lastName;
	}

	public String getGender()
	{
		return gender;
	}

	public void setGender(String gender)
	{
		this.gender = gender;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
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

	public String getUsername()
	{
		return username;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
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
