package com.mis.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import com.mis.formBean.BrokerageDetailForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.CoInsuranceDetailForm;
import com.mis.formBean.HypothicationDetailForm;
import com.mis.formBean.PaymentDetailForm;
import com.mis.formBean.PolicyDetailForm;
import com.mis.formBean.SumInsuredForm;

public class NewPolicyAddDao
{

	Connection	      dbConnection	      = null;
	CallableStatement	callableStatement	= null;

	public int insertPolicyDetail(ClientDetailForm clientDetailForm, PolicyDetailForm policyDetailForm, List<SumInsuredForm> list, List<BrokerageDetailForm> brokerageDetailForm, PaymentDetailForm paymentDetailForm, CoInsuranceDetailForm coInsuranceDetailForm, HypothicationDetailForm hypothicationDetailForm) throws SQLException
	{

		int message = 1;

		String insertStoreProc = "{call usp_insertClientAndPolicyDetail(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";

		String insertInsuredProc = "{call usp_SumInsuredInsert(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";

		String insertOtheProc = "{call usp_otherPolicyDataInsert(?,?,?,?,?,?,?,?,?,?,?)}";

		String insertBrokrageProc = "{call usp_BrokrageInsert(?,?,?,?,?)}";
		try
		{


			dbConnection = DBConnection.getConnection();

			dbConnection.setAutoCommit(false);

			callableStatement = dbConnection.prepareCall(insertStoreProc);

			System.out.println(clientDetailForm.getInsuredName());
			System.out.println(clientDetailForm.getEmail());

			System.out.println("policy name===========================" + policyDetailForm.getPolicyName());

			callableStatement.setString(1, clientDetailForm.getInsuredName());
			callableStatement.setString(2, clientDetailForm.getAddress());
			callableStatement.setString(3, clientDetailForm.getPincode());
			callableStatement.setString(4, clientDetailForm.getContactPerson());
			callableStatement.setString(5, clientDetailForm.getOfficeNo());
			callableStatement.setString(6, clientDetailForm.getFaxNo());
			callableStatement.setString(7, clientDetailForm.getMobileNo());
			callableStatement.setString(8, clientDetailForm.getRmName());
			callableStatement.setString(9, clientDetailForm.getEmail());
			callableStatement.setString(10, policyDetailForm.getPolicyName());
			callableStatement.setString(11, policyDetailForm.getInsuranceCompany());
			callableStatement.setString(12, policyDetailForm.getBranch());
			callableStatement.setString(13, policyDetailForm.getReferencePerson());
			callableStatement.setString(14, policyDetailForm.getRiskStartDate());
			callableStatement.setString(15, policyDetailForm.getRiskEndDate());
			callableStatement.setString(16, policyDetailForm.getDateOfInward());
			callableStatement.setString(17, policyDetailForm.getPolicyNo());
			callableStatement.setString(18, policyDetailForm.getExpirypolicyNo());
			callableStatement.setString(19, policyDetailForm.getRiskLocation());
			callableStatement.setString(20, policyDetailForm.getRiskAddress());
			callableStatement.setString(21, policyDetailForm.getRiskPincode());
			callableStatement.setString(22, policyDetailForm.getCity());
			callableStatement.setString(23, policyDetailForm.getState());
			callableStatement.setString(24, policyDetailForm.getCountry());

			callableStatement.registerOutParameter(25, java.sql.Types.INTEGER);

			// execute insertDBUSER store procedure
			callableStatement.executeUpdate();

			System.out.println("Record is inserted into DBUSER table!");
			int pcid = callableStatement.getInt(25);
			System.out.println("out paramater===" + callableStatement.getInt(25));
			// System.out.println("out paramater==="+callableStatement.getInt(11));
			// System.out.println("out paramater==="+callableStatement.getInt(12));

			for (int i = 0; i < list.size(); i++)
			{

				callableStatement = dbConnection.prepareCall(insertInsuredProc);

				callableStatement.setInt(1, pcid);
				callableStatement.setString(2, list.get(i).getParticulars());
				callableStatement.setInt(3, list.get(i).getSumInsINR());
				callableStatement.setDouble(4, list.get(i).getPolicyRate());
				callableStatement.setDouble(5, list.get(i).getTotalPremiumePaid());
				callableStatement.setDouble(6, list.get(i).getServiceTax());
				callableStatement.setInt(7, list.get(i).getStampDuty());
				callableStatement.setDouble(8, list.get(i).getTpPremium());
				callableStatement.setDouble(9, list.get(i).getDiscount());
				callableStatement.setDouble(10, list.get(i).getPremiumBeforeTerroAndTax());
				callableStatement.setDouble(11, list.get(i).getTerrorismPremium());
				callableStatement.setDouble(12, list.get(i).getPremiumBeforeTerroAndTax());
				callableStatement.setInt(13, list.get(i).getNumber());
				callableStatement.setDouble(14, list.get(i).getPremiumPayable());
				callableStatement.setString(15, list.get(i).getDateOfBirth());
				callableStatement.setDouble(16, list.get(i).getOwnDamagePremium());
				callableStatement.setDouble(17, list.get(i).getBrokerage());
				callableStatement.setDouble(18, list.get(i).getPremiumEligibleForBrokerage());
				callableStatement.setDouble(19, list.get(i).getBrokerageAmount());
				callableStatement.setInt(20, list.get(i).getNoOfWorkers());
				callableStatement.setString(21, list.get(i).getRenewalDate());
				callableStatement.setInt(22, list.get(i).getSalaryPM());
				callableStatement.setDouble(23, list.get(i).getTotalSumInsuredPerAnnum());
				callableStatement.setDouble(24, list.get(i).getRate());

				callableStatement.executeUpdate();

			}

			for (int i = 0; i < brokerageDetailForm.size(); i++)
			{

				System.out.println("brokrage List Size" + brokerageDetailForm.size());

				callableStatement = dbConnection.prepareCall(insertBrokrageProc);
				callableStatement.setInt(1, pcid);
				callableStatement.setString(2, brokerageDetailForm.get(i).getInsuranceCompanyName());
				callableStatement.setDouble(3, brokerageDetailForm.get(i).getPercentage());
				callableStatement.setDouble(4, brokerageDetailForm.get(i).getAmount());
				callableStatement.setDouble(5, brokerageDetailForm.get(i).getShareOfCompany());

				callableStatement.executeUpdate();
			}

			callableStatement = dbConnection.prepareCall(insertOtheProc);
			callableStatement.setInt(1, pcid);
			callableStatement.setString(2, hypothicationDetailForm.getNameOfBank());
			callableStatement.setString(3, hypothicationDetailForm.getCity());
			callableStatement.setString(4, hypothicationDetailForm.getBranch());
			callableStatement.setString(5, coInsuranceDetailForm.getCompanyName());
			callableStatement.setDouble(6, coInsuranceDetailForm.getShareOfCompany());
			callableStatement.setString(7, paymentDetailForm.getModeOfPayment());
			callableStatement.setString(8, paymentDetailForm.getBankName());
			callableStatement.setString(9, paymentDetailForm.getChequeOrDDNo());
			callableStatement.setString(10, paymentDetailForm.getChequeOrDDDate());
			callableStatement.setString(11, paymentDetailForm.getChequeOrDDAmount());

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

		return message;
	}

	public int updatePolicyDetail(ClientDetailForm clientDetailForm, PolicyDetailForm policyDetailForm, List<SumInsuredForm> list, BrokerageDetailForm brokerageDetailForm, PaymentDetailForm paymentDetailForm, CoInsuranceDetailForm coInsuranceDetailForm, HypothicationDetailForm hypothicationDetailForm) throws SQLException
	{

		System.out.println("in update dao");

		int message = 1;

		String insertStoreProc = "{call usp_updateClientAndPolicyDetail(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?s)}";

		String insertInsuredProc = "{call usp_updateSumInsuredInsert(?,?,?,?,?,?,?,?)}";

		String insertOtheProc = "{call usp_updateOtherPolicyDataInsert(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
		try
		{

			DBConnection dbConnection1 = new DBConnection();

			dbConnection = dbConnection1.getConnection();

			dbConnection.setAutoCommit(false);

			callableStatement = dbConnection.prepareCall(insertStoreProc);

			System.out.println(clientDetailForm.getInsuredName());
			System.out.println(clientDetailForm.getEmail());

			System.out.println("policy name===========================" + policyDetailForm.getPolicyName());

			callableStatement.setString(1, clientDetailForm.getInsuredName());
			callableStatement.setString(2, clientDetailForm.getAddress());
			callableStatement.setString(3, clientDetailForm.getPincode());
			callableStatement.setString(4, clientDetailForm.getContactPerson());
			callableStatement.setString(5, clientDetailForm.getOfficeNo());
			callableStatement.setString(6, clientDetailForm.getFaxNo());
			callableStatement.setString(7, clientDetailForm.getMobileNo());
			callableStatement.setString(8, clientDetailForm.getRmName());
			callableStatement.setString(9, clientDetailForm.getEmail());
			callableStatement.setString(10, policyDetailForm.getPolicyName());
			callableStatement.setString(11, policyDetailForm.getInsuranceCompany());
			callableStatement.setString(12, policyDetailForm.getBranch());
			callableStatement.setString(13, policyDetailForm.getReferencePerson());
			callableStatement.setString(14, null);
			callableStatement.setString(15, null);
			callableStatement.setString(16, null);
			callableStatement.setString(17, policyDetailForm.getPolicyNo());
			callableStatement.setString(18, policyDetailForm.getExpirypolicyNo());
			callableStatement.setString(19, policyDetailForm.getRiskLocation());
			callableStatement.setString(20, policyDetailForm.getRiskAddress());
			callableStatement.setString(21, policyDetailForm.getRiskPincode());

			// execute insert DBUSER store procedure
			callableStatement.executeUpdate();

			System.out.println("Record is inserted into DBUSER table!");
			int pcid = callableStatement.getInt(22);
			System.out.println("out paramater pcid===" + callableStatement.getInt(22));

			System.out.println("out paramater clientid===" + callableStatement.getInt(23));

			System.out.println("out paramater policyid===" + callableStatement.getInt(24));
			System.out.println("out paramater policyid===" + callableStatement.getString(1));
			System.out.println("out paramater policyid===" + callableStatement.getString(10));
			// System.out.println("out paramater==="+callableStatement.getInt(11));
			// System.out.println("out paramater==="+callableStatement.getInt(12));

			for (int i = 0; i < list.size(); i++)
			{

				callableStatement = dbConnection.prepareCall(insertInsuredProc);

				callableStatement.setInt(1, pcid);
				/*
				 * callableStatement.setString(2, list.get(i).getParticulars());
				 * callableStatement.setString(3, list.get(i).getSumInsINR());
				 * callableStatement.setString(4, list.get(i).getPolicyRate());
				 * callableStatement.setString(5, list.get(i).getPremiumeST());
				 * callableStatement.setString(6, list.get(i).getServiceTax());
				 * callableStatement.setString(7, list.get(i).getStampDuty());
				 * callableStatement.setString(8, list.get(i)
				 * .getTotalPremiumePaid());
				 */
				callableStatement.executeUpdate();
				System.out.println("sum insured update complete");
			}

			callableStatement = dbConnection.prepareCall(insertOtheProc);
			callableStatement.setInt(1, pcid);
			callableStatement.setString(2, brokerageDetailForm.getInsuranceCompanyName());
			callableStatement.setDouble(3, brokerageDetailForm.getPercentage());
			callableStatement.setDouble(4, brokerageDetailForm.getAmount());
			callableStatement.setString(5, hypothicationDetailForm.getNameOfBank());
			callableStatement.setString(6, hypothicationDetailForm.getCity());
			callableStatement.setString(7, hypothicationDetailForm.getBranch());
			callableStatement.setString(8, coInsuranceDetailForm.getCompanyName());
			callableStatement.setDouble(9, coInsuranceDetailForm.getShareOfCompany());
			callableStatement.setString(10, paymentDetailForm.getModeOfPayment());
			callableStatement.setString(11, paymentDetailForm.getBankName());
			callableStatement.setString(12, paymentDetailForm.getChequeOrDDNo());
			callableStatement.setString(13, paymentDetailForm.getChequeOrDDDate());
			callableStatement.setString(14, paymentDetailForm.getChequeOrDDAmount());

			callableStatement.executeUpdate();

			System.out.println("other detail update complete");

			dbConnection.commit();
			System.out.println("commit done");

		}
		catch (SQLException e)
		{

			e.getMessage();
			e.printStackTrace();
			System.out.println(e.toString());

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

		return message;
	}

	public int getRowNumberOfPolicy(String policyName)
	{
		int rowNum = 0;
		DbOperation dbOperation = new DbOperation();
		try
		{
			

			String Str = "SELECT  rowNum FROM policy_master WHERE policyName='" + policyName+"';";

			ResultSet resultSet = dbOperation.executeSelect(Str);
			while (resultSet.next())
			{
				rowNum = resultSet.getInt("rowNum");
				System.out.println(rowNum);
			}

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return rowNum;

	}

}
