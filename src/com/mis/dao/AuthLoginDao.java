package com.mis.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mis.formBean.AddUserForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.UserDataShowForm;
import com.mis.formBean.UserMasterForm;
import com.mis.formBean.sessionBean;

public class AuthLoginDao
{

	DbOperation	dbOperation	= new DbOperation();

	public int addUser(AddUserForm addUserForm)
	{


		String str1 = "insert into userdetail (name,email,username,password,userType,phone,branchName,reportingManager,deskNo) values('" + addUserForm.getName() + "','" + addUserForm.getEmail() + "','" + addUserForm.getUserID() + "','" + addUserForm.getPassword() + "','" + addUserForm.getDesignation() + "','" + addUserForm.getPhone() + "','" + addUserForm.getBranchName() + "','" + addUserForm.getReportingManager() + "','" + addUserForm.getDeskNo() + "');";

		System.out.println("add user str" + str1);

		/*
		 * String str2 =
		 * "insert into userauthentication (username,userType,password) values('"
		 * +addUserForm.getUserID()+"','"+addUserForm.getDesignation()+"','"+
		 * addUserForm.getPassword()+"');";
		 */

		/* System.out.println("add user str2"+str2); */

		int line = dbOperation.executeQueries(str1);
		/* int line1 = dbOperation.executeQueries(str2); */

		if (line == 1)
		{
			return 1;
		}
		return 0;
	}

	public List userDateAdmin()
	{

		List<UserDataShowForm> list = null;

		try
		{
			String str = " select * from userdetail  where userType <> 'admin' ";
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
				list.add(dataShowForm);

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;
	}

	public sessionBean authentication(UserMasterForm userMaster)
	{

		sessionBean sessionBean = null;
		System.out.println("in dao");
		String username = null;
		String password = null;
		String userType = null;
		String firstName = null;
		String user = "false";

		String str = " select * from userdetail where username='" + userMaster.getUserName() + "' and password='" + userMaster.getPassword() + "';";

		System.out.println(str);

		try
		{

			ResultSet rs = dbOperation.executeSelect(str);

			if (!rs.equals(null))
			{

				while (rs.next())
				{

					username = rs.getString("username");
					password = rs.getString("password");
					userType = rs.getString("userType");
					firstName = rs.getString("name");
				}

				if (username.equalsIgnoreCase(userMaster.getUserName()) && password.equalsIgnoreCase(userMaster.getPassword()))
				{

					user = userType;
					sessionBean = new sessionBean();
					sessionBean.setUserType(userType);
					sessionBean.setFirstName(firstName);
					return sessionBean;
				}
				else
				{

					return sessionBean;
				}

			}
		}
		catch (Exception e)
		{
			e.toString();
		}

		return sessionBean;
	}

	public List reqRelManagerDhasBoard(String rmName)
	{

		List<ClientDetailForm> list = null;

		try
		{
			String str = "select * from client_detail where rmName = '" + rmName + "';";
			ResultSet rs = dbOperation.executeSelect(str);

			list = new ArrayList<ClientDetailForm>();

			while (rs.next())
			{

				ClientDetailForm clientDetailForm = new ClientDetailForm();
				int clientID = rs.getInt("clientID");

				clientDetailForm.setClientID(rs.getInt("clientID"));
				clientDetailForm.setInsuredName(rs.getString("insuredName"));
				clientDetailForm.setEmail(rs.getString("emailId"));
				clientDetailForm.setMobileNo(rs.getString("mobileNo"));

				String findBrokStr = "SELECT sum(amount) FROM brokeragedetail WHERE pcID IN(SELECT pcID FROM policyclient WHERE clientID = " + clientID + ");";
				ResultSet rsFindBrokStr = dbOperation.executeSelect(findBrokStr);

				while (rsFindBrokStr.next())
				{
					clientDetailForm.setTotalBrokerage(rsFindBrokStr.getDouble("sum(amount)"));
				}

				String findPolicyDetailStr = "SELECT policyName,insuranceCompanyName,dateOfInward FROM  policy_detail WHERE clientID = " + clientID + ";";
				ResultSet rsfindPolicyDetailStr = dbOperation.executeSelect(findPolicyDetailStr);

				while (rsfindPolicyDetailStr.next())
				{

					String policyName = rsfindPolicyDetailStr.getString("policyName");
					clientDetailForm.setPolicyName(policyName);
					clientDetailForm.setInsuranceComapnyName(rsfindPolicyDetailStr.getString("insuranceCompanyName"));
					clientDetailForm.setDateOfInward(rsfindPolicyDetailStr.getDate("dateOfInward"));

					long policyID = 0;
					String Policystr = " select * from policy_master where policyName='" + policyName + "';";
					ResultSet PolicystrRs = dbOperation.executeSelect(Policystr);
					while (PolicystrRs.next())
					{
						policyID = PolicystrRs.getInt(1);

					}

					/* get pc id */

					long pcID = 0;
					String findPcIDStr = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + clientID + "' ;";
					ResultSet findPcIDRs = dbOperation.executeSelect(findPcIDStr);

					while (findPcIDRs.next())
					{
						pcID = findPcIDRs.getInt(1);
					}

					String findSumInsuredStr = " SELECT SUM(SumInsINR) FROM sum_insured_detail where pcID='" + pcID + "';";
					ResultSet rsSumInsuredStr = dbOperation.executeSelect(findSumInsuredStr);

					while (rsSumInsuredStr.next())
					{
						clientDetailForm.setTotalSuminsured(rsSumInsuredStr.getDouble("SUM(SumInsINR)"));
					}

				}

				/* get policy id */

				list.add(clientDetailForm);

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		finally
		{

		}

		return list;
	}
	public List getClientName()
	{
		List<String> list = null;

		try
		{
			String str = " select insuredName from client_detail ";
			ResultSet rs = dbOperation.executeSelect(str);

			list = new ArrayList<String>();

			while (rs.next())
			{

				list.add(rs.getString("insuredName"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

	public List<String> getBankList()
	{
		List<String> list = null;

		try
		{
			String str = "SELECT bankName FROM bank_master ";
			ResultSet rs = dbOperation.executeSelect(str);

			list = new ArrayList<String>();

			while (rs.next())
			{

				list.add(rs.getString("bankName"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

	public List<String> getInsuranceCompanyList()
	{
		List<String> list = null;

		try
		{
			String str = "SELECT companyName FROM insurancecompany_master ";
			ResultSet rs = dbOperation.executeSelect(str);

			list = new ArrayList<String>();

			while (rs.next())
			{

				list.add(rs.getString("companyName"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

	public List getPolicyName()
	{
		List<String> list = null;

		try
		{
			String str = " select policyName from policy_master ";
			ResultSet rs = dbOperation.executeSelect(str);

			list = new ArrayList<String>();

			while (rs.next())
			{

				list.add(rs.getString("policyName"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

	public List getReportingPerson(int userType)
	{
		List<String> list = null;

		try
		{
			String str = " SELECT name FROM userdetail WHERE userType=" + userType + ";";
			ResultSet rs = dbOperation.executeSelect(str);

			list = new ArrayList<String>();
			System.out.println("asdfasdfas");
			while (rs.next())
			{

				list.add(rs.getString("name"));
				System.out.println(rs.getString("name"));

			}

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return list;

	}

}
