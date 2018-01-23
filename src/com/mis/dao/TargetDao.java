package com.mis.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.mis.formBean.TargetForm;

public class TargetDao
{

	Connection	      	dbConnection	      = null;
	CallableStatement	callableStatement	= null;

	public void setTarget(TargetForm targetForm) throws SQLException
	{

		String insertStoreProc = "{call usp_setTarget(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";

		try
		{

			dbConnection = DBConnection.getConnection();

			dbConnection.setAutoCommit(false);

			callableStatement = dbConnection.prepareCall(insertStoreProc);

			callableStatement.setInt(1, targetForm.getUserDetailID());
			callableStatement.setString(2, targetForm.getName());
			callableStatement.setString(3, targetForm.getDeskNo());
			callableStatement.setInt(4, targetForm.getJanuary());
			callableStatement.setInt(5, targetForm.getFebruary());
			callableStatement.setInt(6, targetForm.getMarch());
			callableStatement.setInt(7, targetForm.getApril());
			callableStatement.setInt(8, targetForm.getMay());
			callableStatement.setInt(9, targetForm.getJune());
			callableStatement.setInt(10, targetForm.getJuly());
			callableStatement.setInt(11, targetForm.getAugust());
			callableStatement.setInt(12, targetForm.getSeptember());
			callableStatement.setInt(13, targetForm.getOctober());
			callableStatement.setInt(14, targetForm.getNovember());
			callableStatement.setInt(15, targetForm.getDecember());
			callableStatement.setInt(16, targetForm.getTargetAmount());

			callableStatement.executeUpdate();

			dbConnection.commit();
			System.out.println("commit done");

		}
		catch (SQLException e)
		{

			e.getMessage();
			e.printStackTrace();

			dbConnection.rollback();
			System.out.println("roll back done");
		}
		finally
		{

			if (callableStatement != null)
			{
				callableStatement.close();
			}

			if (dbConnection != null)
			{
				dbConnection.close();
			}

		}

	}

}
