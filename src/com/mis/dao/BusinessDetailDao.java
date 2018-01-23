package com.mis.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mis.domain.General;
import com.mis.domain.PolicyDetailDomain;
import com.mis.formBean.BusinessDetailForm;
import com.mis.formBean.BusinessStatusForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.PolicyDetailForm;

public class BusinessDetailDao
{

	Connection	      dbConnection	      = null;
	CallableStatement	callableStatement	= null;
	ResultSet	      rs	              = null;

	public PolicyDetailDomain getBusinessDashboard()
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList;
		List<ClientDetailForm> clientDetailFormlist;

		DbOperation dbOperation = new DbOperation();
		String str = "select * from client_detail";
		String str1 = "select * from policy_detail";
		try
		{

			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			ResultSet rs1 = dbOperation.executeSelect(str);
			ResultSet rs2 = dbOperation.executeSelect(str1);

			while (rs1.next())
			{
				ClientDetailForm form = new ClientDetailForm();
				form.setInsuredName(rs1.getString("insuredName"));
				form.setRmName(rs1.getString("rmName"));
				clientDetailFormlist.add(form);

			}

			while (rs2.next())
			{
				PolicyDetailForm form = new PolicyDetailForm();
				form.setInsuranceCompany(rs2.getString("insuranceCompanyName"));
				policyDetailFormList.add(form);

			}

			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public List searchByDate(String startDate, String endDate)
	{

		String str = "SELECT * FROM policy_detail WHERE (dateOfInward BETWEEN '" + startDate + "' AND '" + endDate + "');";

		List<BusinessDetailForm> businessDetailForms = new ArrayList<BusinessDetailForm>();;
		DbOperation dbOperation = new DbOperation();
		try
		{

			String businessStr = "SELECT a.clientID,a.rmName,b.policyName,a.insuredName,b.insuranceCompanyName FROM client_detail AS a LEFT JOIN policy_detail AS b ON  a.clientID = b.clientID where (b.dateOfInward BETWEEN '" + startDate + "' AND '" + endDate + "');";

			ResultSet resultSet = dbOperation.executeSelect(businessStr);
			while (resultSet.next())
			{

				System.out.println("in rs of business search by insured name");

				BusinessDetailForm form = new BusinessDetailForm();
				form.setInsuredName(resultSet.getString("a.insuredName"));
				form.setPolicyName(resultSet.getString("b.policyName"));
				form.setRmName(resultSet.getString("a.rmName"));
				form.setBankName(resultSet.getString("b.insuranceCompanyName"));

				form.setClientID(resultSet.getInt("a.clientID"));

				int clientID = resultSet.getInt("a.clientID");

				String findBrokStr = "SELECT sum(amount) FROM brokeragedetail WHERE pcID IN(SELECT pcID FROM policyclient WHERE clientID = " + clientID + ");";
				ResultSet rsFindBrokStr = dbOperation.executeSelect(findBrokStr);

				while (rsFindBrokStr.next())
				{
					form.setTotalBrokarege(rsFindBrokStr.getDouble("sum(amount)"));
				}

				String checkStatus = "SELECT isBusinessDone FROM businessdetail WHERE clientID=" + clientID + ";";
				ResultSet rsCheckStatus = dbOperation.executeSelect(checkStatus);

				if (rsCheckStatus.next())
				{

					form.setBusinessDone(rsCheckStatus.getBoolean("isBusinessDone"));
					if (rsCheckStatus.getBoolean("isBusinessDone") == true)
					{
						form.setStatus("Done");
					}
					else
					{

						form.setStatus("Pending");
					}
				}
				else
				{
					form.setStatus("Pending");
				}

				businessDetailForms.add(form);

			}

		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return businessDetailForms;

	}

	public List searchByPolicyStartDate(String startDate, String endDate)
	{

		String str = "SELECT * FROM policy_detail WHERE (dateOfInward BETWEEN '" + startDate + "' AND '" + endDate + "');";

		List<BusinessDetailForm> businessDetailForms = new ArrayList<BusinessDetailForm>();;
		DbOperation dbOperation = new DbOperation();
		try
		{

			String businessStr = "SELECT a.clientID,a.rmName,b.policyName,a.insuredName,b.insuranceCompanyName FROM client_detail AS a LEFT JOIN policy_detail AS b ON  a.clientID = b.clientID where (b.riskStartDate BETWEEN '" + startDate + "' AND '" + endDate + "');";

			ResultSet resultSet = dbOperation.executeSelect(businessStr);
			while (resultSet.next())
			{

				System.out.println("in rs of business search by insured name");

				BusinessDetailForm form = new BusinessDetailForm();
				form.setInsuredName(resultSet.getString("a.insuredName"));
				form.setPolicyName(resultSet.getString("b.policyName"));
				form.setRmName(resultSet.getString("a.rmName"));
				form.setBankName(resultSet.getString("b.insuranceCompanyName"));

				form.setClientID(resultSet.getInt("a.clientID"));

				int clientID = resultSet.getInt("a.clientID");

				String findBrokStr = "SELECT sum(amount) FROM brokeragedetail WHERE pcID IN(SELECT pcID FROM policyclient WHERE clientID = " + clientID + ");";
				ResultSet rsFindBrokStr = dbOperation.executeSelect(findBrokStr);

				while (rsFindBrokStr.next())
				{
					form.setTotalBrokarege(rsFindBrokStr.getDouble("sum(amount)"));
				}

				String checkStatus = "SELECT isBusinessDone FROM businessdetail WHERE clientID=" + clientID + ";";
				ResultSet rsCheckStatus = dbOperation.executeSelect(checkStatus);

				if (rsCheckStatus.next())
				{

					form.setBusinessDone(rsCheckStatus.getBoolean("isBusinessDone"));
					if (rsCheckStatus.getBoolean("isBusinessDone") == true)
					{
						form.setStatus("Done");
					}
					else
					{

						form.setStatus("Pending");
					}
				}
				else
				{
					form.setStatus("Pending");
				}

				businessDetailForms.add(form);

			}

		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return businessDetailForms;

	}

	public List searchByPolicyEndDate(String startDate, String endDate)
	{

		List<BusinessDetailForm> businessDetailForms = new ArrayList<BusinessDetailForm>();;
		DbOperation dbOperation = new DbOperation();
		try
		{

			String businessStr = "SELECT a.clientID,a.rmName,b.policyName,a.insuredName,b.insuranceCompanyName FROM client_detail AS a LEFT JOIN policy_detail AS b ON  a.clientID = b.clientID where (b.riskEndDate BETWEEN '" + startDate + "' AND '" + endDate + "');";

			ResultSet resultSet = dbOperation.executeSelect(businessStr);
			while (resultSet.next())
			{

				System.out.println("in rs of business search by insured name");

				BusinessDetailForm form = new BusinessDetailForm();
				form.setInsuredName(resultSet.getString("a.insuredName"));
				form.setPolicyName(resultSet.getString("b.policyName"));
				form.setRmName(resultSet.getString("a.rmName"));
				form.setBankName(resultSet.getString("b.insuranceCompanyName"));

				form.setClientID(resultSet.getInt("a.clientID"));

				int clientID = resultSet.getInt("a.clientID");

				String findBrokStr = "SELECT sum(amount) FROM brokeragedetail WHERE pcID IN(SELECT pcID FROM policyclient WHERE clientID = " + clientID + ");";
				ResultSet rsFindBrokStr = dbOperation.executeSelect(findBrokStr);

				while (rsFindBrokStr.next())
				{
					form.setTotalBrokarege(rsFindBrokStr.getDouble("sum(amount)"));
				}

				String checkStatus = "SELECT isBusinessDone FROM businessdetail WHERE clientID=" + clientID + ";";
				ResultSet rsCheckStatus = dbOperation.executeSelect(checkStatus);

				if (rsCheckStatus.next())
				{

					form.setBusinessDone(rsCheckStatus.getBoolean("isBusinessDone"));
					if (rsCheckStatus.getBoolean("isBusinessDone") == true)
					{
						form.setStatus("Done");
					}
					else
					{

						form.setStatus("Pending");
					}
				}
				else
				{
					form.setStatus("Pending");
				}

				businessDetailForms.add(form);

			}

		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return businessDetailForms;

	}

	public List searchByInsuredName(String insuredName)
	{

		List<BusinessDetailForm> businessDetailForms = new ArrayList<BusinessDetailForm>();;
		DbOperation dbOperation = new DbOperation();
		try
		{

			String businessStr = "SELECT a.clientID,a.rmName,b.policyName,a.insuredName,b.insuranceCompanyName FROM client_detail AS a LEFT JOIN policy_detail AS b ON  a.clientID = b.clientID where a.insuredName='" + insuredName + "' ;";

			ResultSet resultSet = dbOperation.executeSelect(businessStr);
			while (resultSet.next())
			{

				System.out.println("in rs of business search by insured name");

				BusinessDetailForm form = new BusinessDetailForm();
				form.setInsuredName(resultSet.getString("a.insuredName"));
				form.setPolicyName(resultSet.getString("b.policyName"));
				form.setRmName(resultSet.getString("a.rmName"));
				form.setBankName(resultSet.getString("b.insuranceCompanyName"));

				form.setClientID(resultSet.getInt("a.clientID"));

				int clientID = resultSet.getInt("a.clientID");

				String findBrokStr = "SELECT sum(amount) FROM brokeragedetail WHERE pcID IN(SELECT pcID FROM policyclient WHERE clientID = " + clientID + ");";
				ResultSet rsFindBrokStr = dbOperation.executeSelect(findBrokStr);

				while (rsFindBrokStr.next())
				{
					form.setTotalBrokarege(rsFindBrokStr.getDouble("sum(amount)"));
				}

				String checkStatus = "SELECT isBusinessDone FROM businessdetail WHERE clientID=" + clientID + ";";
				ResultSet rsCheckStatus = dbOperation.executeSelect(checkStatus);

				if (rsCheckStatus.next())
				{

					form.setBusinessDone(rsCheckStatus.getBoolean("isBusinessDone"));
					if (rsCheckStatus.getBoolean("isBusinessDone") == true)
					{
						form.setStatus("Done");
					}
					else
					{

						form.setStatus("Pending");
					}
				}
				else
				{
					form.setStatus("Pending");
				}

				businessDetailForms.add(form);

			}

		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return businessDetailForms;

	}

	public List searchByRelationManager(String relationManager)
	{

		List<BusinessDetailForm> businessDetailForms = new ArrayList<BusinessDetailForm>();;
		DbOperation dbOperation = new DbOperation();
		try
		{

			String businessStr = "SELECT a.clientID,a.rmName,b.policyName,a.insuredName,b.insuranceCompanyName FROM client_detail AS a LEFT JOIN policy_detail AS b ON  a.clientID = b.clientID where a.rmName='" + relationManager + "' ;";
			ResultSet resultSet = dbOperation.executeSelect(businessStr);
			while (resultSet.next())
			{

				System.out.println("in rs of business search by insured name");

				BusinessDetailForm form = new BusinessDetailForm();
				form.setInsuredName(resultSet.getString("a.insuredName"));
				form.setPolicyName(resultSet.getString("b.policyName"));
				form.setRmName(resultSet.getString("a.rmName"));
				form.setBankName(resultSet.getString("b.insuranceCompanyName"));

				form.setClientID(resultSet.getInt("a.clientID"));

				int clientID = resultSet.getInt("a.clientID");

				String findBrokStr = "SELECT sum(amount) FROM brokeragedetail WHERE pcID IN(SELECT pcID FROM policyclient WHERE clientID = " + clientID + ");";
				ResultSet rsFindBrokStr = dbOperation.executeSelect(findBrokStr);

				while (rsFindBrokStr.next())
				{
					form.setTotalBrokarege(rsFindBrokStr.getDouble("sum(amount)"));
				}

				String checkStatus = "SELECT isBusinessDone FROM businessdetail WHERE clientID=" + clientID + ";";
				ResultSet rsCheckStatus = dbOperation.executeSelect(checkStatus);

				if (rsCheckStatus.next())
				{

					form.setBusinessDone(rsCheckStatus.getBoolean("isBusinessDone"));
					if (rsCheckStatus.getBoolean("isBusinessDone") == true)
					{
						form.setStatus("Done");
					}
					else
					{

						form.setStatus("Pending");
					}
				}
				else
				{
					form.setStatus("Pending");
				}

				businessDetailForms.add(form);

			}

		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return businessDetailForms;

	}

	public List searchByInsuranceCompany(String insuranceCompany)
	{

		List<BusinessDetailForm> businessDetailForms = new ArrayList<BusinessDetailForm>();;
		DbOperation dbOperation = new DbOperation();
		try
		{

			String businessStr = "SELECT a.clientID,a.rmName,b.policyName,a.insuredName,b.insuranceCompanyName FROM client_detail AS a LEFT JOIN policy_detail AS b ON  a.clientID = b.clientID where b.insuranceCompanyName='" + insuranceCompany + "' ;";
			ResultSet resultSet = dbOperation.executeSelect(businessStr);
			while (resultSet.next())
			{

				System.out.println("in rs of business search by insured name");

				BusinessDetailForm form = new BusinessDetailForm();
				form.setInsuredName(resultSet.getString("a.insuredName"));
				form.setPolicyName(resultSet.getString("b.policyName"));
				form.setRmName(resultSet.getString("a.rmName"));
				form.setBankName(resultSet.getString("b.insuranceCompanyName"));

				form.setClientID(resultSet.getInt("a.clientID"));

				int clientID = resultSet.getInt("a.clientID");

				String findBrokStr = "SELECT sum(amount) FROM brokeragedetail WHERE pcID IN(SELECT pcID FROM policyclient WHERE clientID = " + clientID + ");";
				ResultSet rsFindBrokStr = dbOperation.executeSelect(findBrokStr);

				while (rsFindBrokStr.next())
				{
					form.setTotalBrokarege(rsFindBrokStr.getDouble("sum(amount)"));
				}

				String checkStatus = "SELECT isBusinessDone FROM businessdetail WHERE clientID=" + clientID + ";";
				ResultSet rsCheckStatus = dbOperation.executeSelect(checkStatus);

				if (rsCheckStatus.next())
				{

					form.setBusinessDone(rsCheckStatus.getBoolean("isBusinessDone"));
					if (rsCheckStatus.getBoolean("isBusinessDone") == true)
					{
						form.setStatus("Done");
					}
					else
					{

						form.setStatus("Pending");
					}
				}
				else
				{
					form.setStatus("Pending");
				}

				businessDetailForms.add(form);

			}

		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return businessDetailForms;

	}

	public List searchByCustom(String insuredNameCustom, String relationManagerCustom, String insuredCompanyCustom, String PolicyStartDateCustom, String DateOfInwardCustom, String PolicyEndDateCustom)
	{

		List<BusinessDetailForm> businessDetailForms = new ArrayList<BusinessDetailForm>();
		try
		{

			DbOperation dbOperation = new DbOperation();
			// String str =
			// "SELECT * FROM client_detail a ,policy_detail b WHERE  a.clientID=b.clientID";

			String str = "SELECT a.clientID,a.rmName,b.policyName,a.insuredName,b.insuranceCompanyName FROM client_detail AS a LEFT JOIN policy_detail AS b ON  a.clientID = b.clientID where 1";

			if (insuredNameCustom != "")
			{
				str = str + " AND a.insuredName='" + insuredNameCustom + "'";
			}

			if (relationManagerCustom != "")
			{
				str = str + " AND a.rmName='" + relationManagerCustom + "'";
			}

			if (insuredCompanyCustom != "")
			{
				str = str + " AND b.insuranceCompanyName='" + insuredCompanyCustom + "'";
			}
			if (PolicyStartDateCustom != "")
			{
				str = str + " AND b.riskStartDate='" + General.dateParse(PolicyStartDateCustom) + "'";
			}
			if (DateOfInwardCustom != "")
			{
				str = str + " AND b.dateOfInward='" + General.dateParse(DateOfInwardCustom) + "'";
			}
			if (PolicyEndDateCustom != "")
			{
				str = str + " AND b.riskEndDate='" + General.dateParse(PolicyEndDateCustom) + "'";
			}

			str = str + ";";

			System.out.println("query" + str);
			ResultSet resultSet = dbOperation.executeSelect(str);
			while (resultSet.next())
			{

				System.out.println("in rs");

				BusinessDetailForm form = new BusinessDetailForm();
				form.setInsuredName(resultSet.getString("a.insuredName"));
				form.setPolicyName(resultSet.getString("b.policyName"));
				form.setRmName(resultSet.getString("a.rmName"));
				form.setBankName(resultSet.getString("b.insuranceCompanyName"));

				form.setClientID(resultSet.getInt("a.clientID"));

				int clientID = resultSet.getInt("a.clientID");

				String findBrokStr = "SELECT sum(amount) FROM brokeragedetail WHERE pcID IN(SELECT pcID FROM policyclient WHERE clientID = " + clientID + ");";
				ResultSet rsFindBrokStr = dbOperation.executeSelect(findBrokStr);

				while (rsFindBrokStr.next())
				{
					form.setTotalBrokarege(rsFindBrokStr.getDouble("sum(amount)"));
				}

				String checkStatus = "SELECT isBusinessDone FROM businessdetail WHERE clientID=" + clientID + ";";
				ResultSet rsCheckStatus = dbOperation.executeSelect(checkStatus);

				if (rsCheckStatus.next())
				{

					form.setBusinessDone(rsCheckStatus.getBoolean("isBusinessDone"));
					if (rsCheckStatus.getBoolean("isBusinessDone") == true)
					{
						form.setStatus("Done");
					}
					else
					{

						form.setStatus("Pending");
					}
				}
				else
				{
					form.setStatus("Pending");
				}

				businessDetailForms.add(form);

			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return businessDetailForms;

	}

	public List getAllBusiness()
	{

		List<BusinessDetailForm> businessDetailForms = new ArrayList<BusinessDetailForm>();
		DbOperation dbOperation = new DbOperation();

		try
		{

			String businessStr = "SELECT a.clientID,b.policyName,a.insuredName FROM client_detail AS a LEFT JOIN policy_detail AS b ON  a.clientID = b.clientID ;";

			ResultSet resultSet = dbOperation.executeSelect(businessStr);
			while (resultSet.next())
			{

				System.out.println("in rs of business");

				BusinessDetailForm form = new BusinessDetailForm();
				form.setInsuredName(resultSet.getString("a.insuredName"));
				form.setPolicyName(resultSet.getString("b.policyName"));

				form.setClientID(resultSet.getInt("a.clientID"));

				int clientID = resultSet.getInt("a.clientID");

				String findBrokStr = "SELECT sum(amount) FROM brokeragedetail WHERE pcID IN(SELECT pcID FROM policyclient WHERE clientID = " + clientID + ");";
				ResultSet rsFindBrokStr = dbOperation.executeSelect(findBrokStr);

				while (rsFindBrokStr.next())
				{
					form.setTotalBrokarege(rsFindBrokStr.getDouble("sum(amount)"));
				}

				String checkStatus = "SELECT isBusinessDone FROM businessdetail WHERE clientID=" + clientID + ";";
				ResultSet rsCheckStatus = dbOperation.executeSelect(checkStatus);

				if (rsCheckStatus.next())
				{

					form.setBusinessDone(rsCheckStatus.getBoolean("isBusinessDone"));
					if (rsCheckStatus.getBoolean("isBusinessDone") == true)
					{
						form.setStatus("Done");
					}
					else
					{

						form.setStatus("Pending");
					}
				}
				else
				{
					form.setStatus("Pending");
				}

				businessDetailForms.add(form);

			}

		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return businessDetailForms;
	}

	public List<BusinessStatusForm> viewBusinessStatus(long clientID) throws SQLException
	{

		DbOperation dbOperation = new DbOperation();
		List<BusinessStatusForm> businessStatusForms = new ArrayList<BusinessStatusForm>();
		BusinessStatusForm form = null;
		
		
		String businessStatusStr = "SELECT  * FROM businessdetail WHERE  clientID=" + clientID + ";";
		ResultSet rsCheckStatus = dbOperation.executeSelect(businessStatusStr);
		
		while(rsCheckStatus.next())
		{
			form = new BusinessStatusForm();
			form.setChequeAmount(rsCheckStatus.getDouble("chequeAmount"));
			form.setChequeDate(General.dateToStringConvert(rsCheckStatus.getDate("chequeDate")) );
			form.setChequeNo(rsCheckStatus.getString("chequeNo"));
			businessStatusForms.add(form);
		}
		
		return businessStatusForms;
		
	}
}
