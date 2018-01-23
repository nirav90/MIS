package com.mis.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DbOperation
{
	public Statement	stm	 = null;
	public Connection	conn	= null;
	DBConnection	  con	 = new DBConnection();
	public ResultSet	rs	 = null;
	String	          flag	 = "false";

	/* below method is use only for  SELECT query */

	public ResultSet executeSelect(String str)
	{
		try
		{
			conn = con.getConnection();
			//System.out.println("line 1");
			stm = (Statement) conn.createStatement();
			// System.out.println("line 1");
//			System.out.println(str);
			rs = stm.executeQuery(str);
//			System.out.println("line affected succefully");

			/*while(rs.next())
			{
			 String name= rs.getString(1);
			 String phone = rs.getString(2);
			 System.out.println(name+phone);
			} */
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return rs;
	}

	/* below method is use  for  INSERT , UPDATE ,DELETE select query */

	public int executeQueries(String str)
	{
		int line = 0;
		try
		{
			conn = con.getConnection();
			// System.out.println("line 1");
			stm = (Statement) conn.createStatement();
			// System.out.println("line 1");
			System.out.println(str);
			line = stm.executeUpdate(str);
			flag = "true";
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return line;
	}
}
