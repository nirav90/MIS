package com.mis.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mis.formBean.BusinessDetailForm;
import com.mis.formBean.BusinessStatusForm;

public class BusinessStatusDao
{

	Connection	      dbConnection	      = null;
	CallableStatement	callableStatement	= null;
	ResultSet	      rs	              = null;

	public int addBusinessStatus(BusinessStatusForm businessStatusForm)
	{
		try
		{
			DbOperation dbOperation = new DbOperation();
			String str1 = " INSERT INTO businessdetail (chequeNo, chequeDate, chequeAmount, clientID, isBusinessDone)VALUES('" + businessStatusForm.getChequeNo() + "','" + businessStatusForm.getChequeDate() + "','" + businessStatusForm.getChequeAmount() + "','" + businessStatusForm.getClientID() + "',true);";
			int line = dbOperation.executeQueries(str1);
			/* int line1 = dbOperation.executeQueries(str2); */
			if (line == 1)
			{
				return 1;
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	
	public boolean chkStatus(int clientID)
	{
		boolean flag = false;
		
		try
		{
			DbOperation dbOperation = new DbOperation();
			String str1 = "SELECT isBusinessDone FROM businessdetail WHERE clientID = "+clientID+";";
			ResultSet resultSet = dbOperation.executeSelect(str1);
			if(resultSet.next())
			{
				flag = true;
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return flag;
		
	}

	
	public int updateBusinessStatus(BusinessStatusForm businessStatusForm)
	{
		try
		{
			DbOperation dbOperation = new DbOperation();
			String str1 = " update businessdetail  set chequeNo = '" + businessStatusForm.getChequeNo() + "', chequeDate= '" + businessStatusForm.getChequeDate() + "', chequeAmount='" + businessStatusForm.getChequeAmount() + "', clientID='" + businessStatusForm.getClientID() + "', isBusinessDone = true;";
			System.out.println(str1);
			int line = dbOperation.executeQueries(str1);
			/* int line1 = dbOperation.executeQueries(str2); */
			if (line == 1)
			{
				return 1;
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}

}
