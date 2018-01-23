package com.mis.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SettingDao
{

	/*
	 * 2:Corporate Officer 3:Zonal Officer 4:Regional Managers 5:Branch Managers
	 * 6:Relationship Manager
	 */

	DbOperation	dbOperation	= new DbOperation();

	public List getRmName()
	{
		List<String> list = null;

		try
		{
			String str = " select name from userdetail where userType='6';";
			ResultSet rs = dbOperation.executeSelect(str);
			System.out.println("RM LIST" + str);
			list = new ArrayList<String>();

			while (rs.next())
			{

				list.add(rs.getString("name"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

	public List getCorporateOfficer()
	{
		List<String> list = null;

		try
		{
			String str = " select name from userdetail where userType='2';";
			ResultSet rs = dbOperation.executeSelect(str);
			System.out.println("RM LIST" + str);
			list = new ArrayList<String>();

			while (rs.next())
			{

				list.add(rs.getString("name"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

	public List getZonalOfficer()
	{
		List<String> list = null;

		try
		{
			String str = " select name from userdetail where userType='3';";
			ResultSet rs = dbOperation.executeSelect(str);
			System.out.println("RM LIST" + str);
			list = new ArrayList<String>();

			while (rs.next())
			{

				list.add(rs.getString("name"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

	public List getRegionalManagers()
	{
		List<String> list = null;

		try
		{
			String str = " select name from userdetail where userType='4';";
			ResultSet rs = dbOperation.executeSelect(str);
			System.out.println("RM LIST" + str);
			list = new ArrayList<String>();

			while (rs.next())
			{

				list.add(rs.getString("name"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

	public List getBranchManager()
	{
		List<String> list = null;

		try
		{
			String str = " select name from userdetail where userType='5';";
			ResultSet rs = dbOperation.executeSelect(str);
			System.out.println("RM LIST" + str);
			list = new ArrayList<String>();

			while (rs.next())
			{

				list.add(rs.getString("name"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

}
