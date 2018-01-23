package com.mis.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.mis.formBean.BrokerageDetailForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.PolicyDetailForm;
import com.mis.formBean.SumInsuredForm;
import com.mis.formBean.TargetForm;

public class DashBoardDao
{

	Connection	              dbConnection	            = null;
	CallableStatement	      callableStatement	        = null;
	ResultSet	              resultSet;
	List<TargetForm>	      list	                    = null;
	List<PolicyDetailForm>	  policyDetailFormList	    = null;
	List<SumInsuredForm>	  sumInsuredFormList	    = null;
	List<BrokerageDetailForm>	brokerageDetailFormList	= null;
	List<ClientDetailForm>	  clientDetailFormlist	    = null;

	int	                      TotalSum2	                = 0;
	double	                  total	                    = 0.00;
	double	                  per	                    = 0.00;
	int	                      policyID	                = 0;
	int	                      pcID	                    = 0;
	double	                  TotalSum	                = 0.00;

	DbOperation	              dbOperation	            = new DbOperation();
	Calendar	              calendar	                = Calendar.getInstance();
	int	                      currentMonth	            = calendar.getTime().getMonth() + 1;

	public List showDashboard(String month, String reportingPerson, String userType)
	{

		try
		{

			DBConnection dbConnection1 = new DBConnection();
			dbConnection = dbConnection1.getConnection();
			double TotalSum = 0.00;
			double TotalSumOfYear = 0.00;
			int TotalSum2 = 0;
			double total = 0.00;
			double per = 0.00;
			int policyID = 0;
			int pcID = 0;
			try
			{

				TotalSum = monthTarget(month, reportingPerson, userType);

				TotalSumOfYear = yearTarget(month, reportingPerson, userType);

				System.out.println("sssssssssssssssssssssssssssssssssssssssssssssssss" + TotalSum);
				System.out.println("sssssssssssssssssssssssssssssssssssssssssssssssssgggggggggggggg" + TotalSumOfYear);

				if (userType.equals("6"))
				{

					String str = " select sum(" + month + "),sum(totalAmount)from target_detail  where name='" + reportingPerson + "';";
					ResultSet rs = dbOperation.executeSelect(str);
					list = new ArrayList<TargetForm>();
					while (rs.next())
					{

						int TargetMonth = rs.getInt(1);
						int TargetYear = rs.getInt(2);
						TargetForm targetForm = new TargetForm();
						targetForm.setMonthlyTarget(TargetMonth);
						targetForm.setYearlyTarget(TargetYear);
						targetForm.setMonthlyTargetAchive(TotalSum);
						targetForm.setYearlyTargetAchive(TotalSumOfYear);

						double remainMonth = (rs.getInt(1) - TotalSum);
						double remainYear = (rs.getInt(2) - TotalSumOfYear);

						/* percentage calculation for dashboard */

						double monthPercentage = ((TotalSum * 100) / TargetMonth);
						double yearPercentage = ((TotalSumOfYear * 100) / TargetYear);

						if (monthPercentage > 100)
						{
							targetForm.setPercentageOfTargetMonth(100);
						}
						else
						{
							targetForm.setPercentageOfTargetMonth(monthPercentage);
						}

						if (yearPercentage > 100)
						{
							targetForm.setPercentageOfTargetYear(100);
						}
						else
						{
							targetForm.setPercentageOfTargetYear(yearPercentage);
						}

						if (remainMonth < 0.00)
						{

							targetForm.setMonthlyTargetRemain(0);
						}
						else
						{

							targetForm.setMonthlyTargetRemain(remainMonth);
						}

						if (remainYear < 0.00)
						{

							targetForm.setYearlyTargetRemain(0);
						}
						else
						{

							targetForm.setYearlyTargetRemain(remainYear);
						}

						System.out.println("Rmain ToTAL======================" + remainMonth);
						list.add(targetForm);
					}

				}
				else
				{

					String str = " select sum(" + month + "),sum(totalAmount)from target_detail  where reportingManager='" + reportingPerson + "';";
					ResultSet rs = dbOperation.executeSelect(str);
					list = new ArrayList<TargetForm>();
					while (rs.next())
					{
						int TargetMonth = rs.getInt(1);
						int TargetYear = rs.getInt(2);

						TargetForm targetForm = new TargetForm();
						targetForm.setMonthlyTarget(TargetMonth);
						targetForm.setYearlyTarget(TargetYear);
						targetForm.setMonthlyTargetAchive(TotalSum);
						targetForm.setYearlyTargetAchive(TotalSumOfYear);

						double remainMonth = (rs.getInt(1) - TotalSum);
						double remainYear = (rs.getInt(2) - TotalSumOfYear);

						System.out.println("target Year" + TargetYear);
						System.out.println("total sum of year" + TotalSumOfYear);

						double monthPercentage = ((TotalSum * 100) / TargetMonth);
						double yearPercentage = ((TotalSumOfYear * 100) / TargetYear);

						if (monthPercentage > 100)
						{
							targetForm.setPercentageOfTargetMonth(100);
						}
						else
						{
							targetForm.setPercentageOfTargetMonth(monthPercentage);
						}

						if (yearPercentage > 100)
						{
							targetForm.setPercentageOfTargetYear(100);
						}
						else
						{
							targetForm.setPercentageOfTargetYear(yearPercentage);
						}

						if (remainMonth < 0.00)
						{

							targetForm.setMonthlyTargetRemain(0);
						}
						else
						{

							targetForm.setMonthlyTargetRemain(remainMonth);
						}

						if (remainYear < 0.00)
						{

							targetForm.setYearlyTargetRemain(0);
						}
						else
						{

							targetForm.setYearlyTargetRemain(remainYear);
						}

						System.out.println("Rmain ToTAL======================" + remainMonth);

						list.add(targetForm);
					}
				}
				System.out.println(policyDetailFormList.size());
				System.out.println(clientDetailFormlist.size());
				System.out.println(sumInsuredFormList.size());
			}
			catch (Exception e)
			{

				e.printStackTrace();
			}

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	public double monthTarget(String month, String reportingPerson, String userType) throws SQLException
	{

		try
		{
			String clientDetail = "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID AND rmName='" + reportingPerson + "' AND dateOfInward like '%-" + currentMonth + "-%' ;";
			System.out.println("client detail query" + clientDetail);
			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setRmName(rscd.getString("rmName"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));

				/* get policy id */
				String str5 = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs5 = dbOperation.executeSelect(str5);
				while (rs5.next())
				{
					policyID = rs5.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}
					String str2 = " select sum(premiumBeforeTerroAndTax)  from  sum_insured_detail where pcID='" + pcID + "';";

					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{
						form1.setSumInsINR(rs2.getInt("sum(premiumBeforeTerroAndTax)"));
						TotalSum2 = rs2.getInt("sum(premiumBeforeTerroAndTax)");
						// TotalSum = TotalSum +
						// rs2.getInt("sum(SumInsINR)");
						System.out.println("SUMMMMM======" + rs2.getInt("sum(premiumBeforeTerroAndTax)"));
						sumInsuredFormList.add(form1);
					}

					// System.out.println("Total SUM============"+TotalSum);
					String selectOtherDetailProc = "select sum(percentage) from brokeragedetail where pcID='" + pcID + "';";

					ResultSet rs4 = dbOperation.executeSelect(selectOtherDetailProc);
					while (rs4.next())
					{

						double total1;
						brokerageDetailForm.setPercentage(rs4.getDouble("sum(percentage)"));
						System.out.println("percentage=============" + rs4.getDouble("sum(percentage)"));
						total1 = (((rs4.getDouble("sum(percentage)")) * TotalSum2) / 100);

						total = total + total1;
						// brokerageDetailFormList.add(brokerageDetailForm);
					}
					System.out.println("total with percewntage==============" + total);
					TotalSum = TotalSum + total;
					System.out.println("final Summation==============" + TotalSum);
				}

			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return TotalSum;

	}

	public double yearTarget(String month, String reportingPerson, String userType) throws SQLException
	{

		try
		{
			String clientDetail = "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID AND rmName='" + reportingPerson + "' ;";
			System.out.println("client detail query" + clientDetail);
			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setRmName(rscd.getString("rmName"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));

				/* get policy id */
				String str5 = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs5 = dbOperation.executeSelect(str5);
				while (rs5.next())
				{
					policyID = rs5.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}
					String str2 = " select sum(premiumBeforeTerroAndTax)  from  sum_insured_detail where pcID='" + pcID + "';";

					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{
						form1.setSumInsINR(rs2.getInt("sum(premiumBeforeTerroAndTax)"));
						TotalSum2 = rs2.getInt("sum(premiumBeforeTerroAndTax)");
						// TotalSum = TotalSum +
						// rs2.getInt("sum(SumInsINR)");
						System.out.println("SUMMMMM======" + rs2.getInt("sum(premiumBeforeTerroAndTax)"));
						sumInsuredFormList.add(form1);
					}
					// System.out.println("Total SUM============"+TotalSum);
					String selectOtherDetailProc = "select sum(percentage) from brokeragedetail where pcID='" + pcID + "';";
					ResultSet rs4 = dbOperation.executeSelect(selectOtherDetailProc);
					while (rs4.next())
					{

						double total1;
						brokerageDetailForm.setPercentage(rs4.getDouble("sum(percentage)"));
						System.out.println("percentage=============" + rs4.getDouble("sum(percentage)"));
						total1 = (((rs4.getDouble("sum(percentage)")) * TotalSum2) / 100);

						total = total + total1;
						// brokerageDetailFormList.add(brokerageDetailForm);
					}
					System.out.println("total with percewntage==============" + total);
					TotalSum = TotalSum + total;
					System.out.println("final Summation==============" + TotalSum);
				}

			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return TotalSum;

	}

}
