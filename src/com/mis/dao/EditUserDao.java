package com.mis.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mis.formBean.UserDataShowForm;

public class EditUserDao
{

	DbOperation	dbOperation	= new DbOperation();

	public int editUserByID(UserDataShowForm userDataShowForm)
	{

		try
		{

			String str = "UPDATE userdetail  SET `name` = " + "'" + userDataShowForm.getName() + "' , `email` = '" + userDataShowForm.getEmail() + "' , `username` = '" + userDataShowForm.getUsername() + "' ,`password` = '" + userDataShowForm.getPassword() + "' , `userType` = '" + userDataShowForm.getDesignation() + "' , `phone` = '" + userDataShowForm.getPhone() + "' , `branchName` = '" + userDataShowForm.getBranchName() + "' , `reportingManager` = '" + userDataShowForm.getReportingManager() + "' , `deskNo` = '" + userDataShowForm.getDeskNo() + "' WHERE `userDetailID` = '" + userDataShowForm.getUserDetailID() + "'";

			System.out.println(str);
			int i = dbOperation.executeQueries(str);

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return 1;
	}

	public List userDateAdmin(int id)
	{

		List<UserDataShowForm> list = null;

		try
		{
			String str = " select * from userdetail where userDetailID='" + id + "';";

			ResultSet rs = dbOperation.executeSelect(str);

			list = new ArrayList<UserDataShowForm>();

			while (rs.next())
			{

				UserDataShowForm dataShowForm = new UserDataShowForm();
				dataShowForm.setUserDetailID(rs.getInt("userDetailID"));
				dataShowForm.setBranchName(rs.getString("branchName"));
				dataShowForm.setReportingManager(rs.getString("reportingManager"));
				dataShowForm.setDeskNo(rs.getString("deskNo"));
				dataShowForm.setName(rs.getString("name"));
				dataShowForm.setEmail(rs.getString("email"));
				dataShowForm.setPhone(rs.getString("phone"));
				dataShowForm.setDesignation(rs.getString("userType"));
				dataShowForm.setUsername(rs.getString("username"));
				dataShowForm.setPassword(rs.getString("password"));
				list.add(dataShowForm);

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;
	}

	public int deleteUserByID(int id)
	{

		try
		{

			String str = "delete from userdetail  WHERE `userDetailID` = '" + id + "';";

			System.out.println(str);
			int i = dbOperation.executeQueries(str);

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return 1;
	}

}
