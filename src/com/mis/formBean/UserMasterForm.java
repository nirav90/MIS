package com.mis.formBean;

public class UserMasterForm
{

	private String	userName;
	private String	userType;
	private String	password;
	private int	   userTypeID;

	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getUserType()
	{
		return userType;
	}
	public void setUserType(String userType)
	{
		this.userType = userType;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public int getUserTypeID()
	{
		return userTypeID;
	}
	public void setUserTypeID(int userTypeID)
	{
		this.userTypeID = userTypeID;
	}

}
