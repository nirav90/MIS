package com.mis.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mis.domain.General;
import com.mis.domain.PolicyDetailDomain;
import com.mis.formBean.BrokerageDetailForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.CoInsuranceDetailForm;
import com.mis.formBean.HypothicationDetailForm;
import com.mis.formBean.PaymentDetailForm;
import com.mis.formBean.PolicyDetailForm;
import com.mis.formBean.SumInsuredForm;

public class ClientPolicyListDao
{

	Connection	      dbConnection	      = null;
	CallableStatement	callableStatement	= null;
	ResultSet	      resultSet;

	public List getClientPolicyList(int clientID)
	{
		List<PolicyDetailForm> list = null;
		String procedure = "{call usp_policyClientList(?)}";
		try
		{
			dbConnection = DBConnection.getConnection();
			callableStatement = dbConnection.prepareCall(procedure);
			callableStatement.setInt(1, clientID);

			resultSet = callableStatement.executeQuery();
			System.out.println("resultset" + resultSet);
			list = new ArrayList<PolicyDetailForm>();

			while (resultSet.next())
			{
				System.out.println("------------------------------");
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();
				policyDetailForm.setPolicyName(resultSet.getString("policyName"));
				policyDetailForm.setInsuranceCompany(resultSet.getString("insuranceCompanyName"));
				policyDetailForm.setDateOfInward(resultSet.getString("dateOfInward"));
				policyDetailForm.setBranch(resultSet.getString("branchOfCompany"));
				policyDetailForm.setRiskStartDate(resultSet.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(resultSet.getString("riskEndDate"));
				list.add(policyDetailForm);
			}
		}
		catch (Exception e)
		{}
		return list;
	}

	public PolicyDetailDomain getClientPolicyDetailShow(String policyName, int clientID)
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList;
		List<SumInsuredForm> sumInsuredFormList;
		List<BrokerageDetailForm> brokerageDetailFormList;
		List<HypothicationDetailForm> hypothicationDetailFormList;
		List<CoInsuranceDetailForm> insuranceDetailFormList;
		List<PaymentDetailForm> paymentDetailFormlist;
		List<ClientDetailForm> clientDetailFormlist;

		DbOperation dbOperation = new DbOperation();
		int policyID = 0;
		int pcID = 0;
		try
		{

			dbConnection = DBConnection.getConnection();

			/* get client Detail */

			String clientDetail = "select * from client_detail where clientID='" + clientID + "';";

			ResultSet rscd = dbOperation.executeSelect(clientDetail);

			clientDetailFormlist = new ArrayList<ClientDetailForm>();

			while (rscd.next())
			{

				ClientDetailForm form = new ClientDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setAddress(rscd.getString("address"));
				form.setContactPerson(rscd.getString("contactPerson"));
				form.setPincode(rscd.getString("pincode"));
				form.setOfficeNo(rscd.getString("officeNo"));
				form.setFaxNo(rscd.getString("faxNo"));
				form.setMobileNo(rscd.getString("mobileNo"));
				form.setRmName(rscd.getString("rmName"));
				form.setEmail(rscd.getString("emailId"));

				clientDetailFormlist.add(form);

			}

			/* get policy data */

			String policydetail = " select * from policy_detail where policyName='" + policyName + "' AND clientID='" + clientID + "';";

			ResultSet rscd1 = dbOperation.executeSelect(policydetail);

			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			while (rscd1.next())
			{
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();
				policyDetailForm.setPolicyName(policyName);
				policyDetailForm.setInsuranceCompany(rscd1.getString("insuranceCompanyName"));
				policyDetailForm.setBranch(rscd1.getString("branchOfCompany"));
				policyDetailForm.setReferencePerson(rscd1.getString("referPerson"));
				policyDetailForm.setDateOfInward(rscd1.getString("dateOfInward"));
				policyDetailForm.setRiskStartDate(rscd1.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(rscd1.getString("riskEndDate"));
				policyDetailForm.setRiskLocation(rscd1.getString("riskLocation"));
				policyDetailForm.setRiskAddress(rscd1.getString("riskAddress"));
				policyDetailForm.setRiskPincode(rscd1.getString("riskPincode"));
				policyDetailForm.setExpirypolicyNo(rscd1.getString("expiryPolicyNo"));
				policyDetailForm.setPolicyNo(rscd1.getString("expiryPolicyNo"));
				policyDetailForm.setCity(rscd1.getString("city"));
				policyDetailForm.setState(rscd1.getString("state"));
				policyDetailForm.setCountry(rscd1.getString("country"));
				policyDetailForm.setRiskLocation(rscd1.getString("riskLocation"));

				policyDetailFormList.add(policyDetailForm);

			}

			/* get policy id */

			String str = " select * from policy_master where policyName='" + policyName + "';";
			ResultSet rs = dbOperation.executeSelect(str);
			while (rs.next())
			{
				policyID = rs.getInt(1);

			}

			/* get pc id */

			String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + clientID + "' ;";
			ResultSet rs1 = dbOperation.executeSelect(str1);

			while (rs1.next())
			{
				pcID = rs1.getInt(1);
			}

			/* get sum insured detail */

			String str2 = " select * from sum_insured_detail where pcID='" + pcID + "';";
			ResultSet rs2 = dbOperation.executeSelect(str2);

			sumInsuredFormList = new ArrayList<SumInsuredForm>();

			while (rs2.next())
			{

				SumInsuredForm form = new SumInsuredForm();

				form.setParticulars(rs2.getString("particulars"));
				form.setDateOfBirth(rs2.getString("dateOfBirth"));
				form.setRenewalDate(rs2.getString("renewalDate"));
				form.setPolicyRate(rs2.getDouble("policyRate"));
				form.setServiceTax(rs2.getDouble("serviceTax"));
				form.setDiscount(rs2.getDouble("discount"));
				form.setPremiumBeforeTerroAndTax(rs2.getDouble("premiumBeforeTerroAndTax"));
				form.setTerrorismPremium(rs2.getDouble("terrorismPremium"));
				form.setPremiumNetOfServiceTax(rs2.getDouble("premiumNetOfServiceTax"));
				form.setPremiumPayable(rs2.getDouble("premiumPayable"));
				form.setOwnDamagePremium(rs2.getDouble("ownDamagePremium"));
				form.setBrokerage(rs2.getDouble("brokerage"));
				form.setPremiumEligibleForBrokerage(rs2.getDouble("premiumEligibleForBrokerage"));
				form.setBrokerageAmount(rs2.getDouble("brokerageAmount"));
				form.setTotalSumInsuredPerAnnum(rs2.getDouble("totalSumInsuredPerAnnum"));
				form.setRate(rs2.getDouble("rate"));
				form.setSumInsINR(rs2.getInt("SumInsINR"));
				form.setStampDuty(rs2.getInt("stampDuty"));
				form.setNumber(rs2.getInt("number"));
				form.setNoOfWorkers(rs2.getInt("noOfWorkers"));
				form.setSalaryPM(rs2.getInt("salaryPM"));

				sumInsuredFormList.add(form);
			}

			/* get brokrage detail */

			String brokrageStr = " select * from brokeragedetail where pcID='" + pcID + "';";
			ResultSet brokrageResult = dbOperation.executeSelect(brokrageStr);

			brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();
			while (brokrageResult.next())
			{

				BrokerageDetailForm form = new BrokerageDetailForm();

				form.setShareOfCompany(brokrageResult.getDouble("shareofCompany"));
				form.setPercentage(brokrageResult.getDouble("percentage"));
				form.setInsuranceCompanyName(brokrageResult.getString("insuranceCompanyName"));
				form.setAmount(brokrageResult.getDouble("amount"));

				brokerageDetailFormList.add(form);
			}

			/* get all other detail */

			String selectOtherDetailProc = "{call usp_policyDataShow(?)}";
			callableStatement = dbConnection.prepareCall(selectOtherDetailProc);

			callableStatement.setInt(1, pcID);

			ResultSet rs4 = callableStatement.executeQuery();

			hypothicationDetailFormList = new ArrayList<HypothicationDetailForm>();
			insuranceDetailFormList = new ArrayList<CoInsuranceDetailForm>();
			paymentDetailFormlist = new ArrayList<PaymentDetailForm>();

			while (rs4.next())
			{
				HypothicationDetailForm hypothicationDetailForm = new HypothicationDetailForm();
				CoInsuranceDetailForm coInsuranceDetailForm = new CoInsuranceDetailForm();
				PaymentDetailForm paymentDetailForm = new PaymentDetailForm();

				hypothicationDetailForm.setNameOfBank(rs4.getString("NameOfBank"));
				hypothicationDetailForm.setBranch(rs4.getString("Branch"));
				hypothicationDetailForm.setCity(rs4.getString("city"));

				coInsuranceDetailForm.setCompanyName(rs4.getString("CompanyName"));
				coInsuranceDetailForm.setShareOfCompany(rs4.getDouble("shareOfCompany"));

				paymentDetailForm.setModeOfPayment(rs4.getString("modeOfPayment"));
				paymentDetailForm.setBankName(rs4.getString("bankName"));
				paymentDetailForm.setChequeOrDDAmount(rs4.getString("chequeOrDDAmount"));
				paymentDetailForm.setChequeOrDDDate(rs4.getString("chequeOrDDDate"));
				paymentDetailForm.setChequeOrDDNo(rs4.getString("chequeOrDDNo"));

				hypothicationDetailFormList.add(hypothicationDetailForm);
				insuranceDetailFormList.add(coInsuranceDetailForm);
				paymentDetailFormlist.add(paymentDetailForm);

			}

			policyDetailDomain.setBrokerageDetailFormList(brokerageDetailFormList);
			policyDetailDomain.setHypothicationDetailFormList(hypothicationDetailFormList);
			policyDetailDomain.setInsuranceDetailFormList(insuranceDetailFormList);
			policyDetailDomain.setPaymentDetailFormlist(paymentDetailFormlist);
			policyDetailDomain.setSumInsuredFormList(sumInsuredFormList);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);
			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public PolicyDetailDomain getReportData()
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList = null;
		List<SumInsuredForm> sumInsuredFormList = null;
		List<BrokerageDetailForm> brokerageDetailFormList = null;
		List<HypothicationDetailForm> hypothicationDetailFormList = null;
		List<CoInsuranceDetailForm> insuranceDetailFormList = null;
		List<PaymentDetailForm> paymentDetailFormlist = null;
		List<ClientDetailForm> clientDetailFormlist = null;

		DbOperation dbOperation = new DbOperation();
		int policyID = 0;
		int pcID = 0;
		try
		{
			dbConnection = DBConnection.getConnection();

			String clientDetail = "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID;";

			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();
			hypothicationDetailFormList = new ArrayList<HypothicationDetailForm>();
			insuranceDetailFormList = new ArrayList<CoInsuranceDetailForm>();
			paymentDetailFormlist = new ArrayList<PaymentDetailForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				HypothicationDetailForm hypothicationDetailForm = new HypothicationDetailForm();
				CoInsuranceDetailForm coInsuranceDetailForm = new CoInsuranceDetailForm();
				PaymentDetailForm paymentDetailForm = new PaymentDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setAddress(rscd.getString("address"));
				form.setContactPerson(rscd.getString("contactPerson"));
				form.setPincode(rscd.getString("pincode"));
				form.setOfficeNo(rscd.getString("officeNo"));
				form.setFaxNo(rscd.getString("faxNo"));
				form.setMobileNo(rscd.getString("mobileNo"));
				form.setRmName(rscd.getString("rmName"));
				form.setEmail(rscd.getString("emailId"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));
				policyDetailForm.setInsuranceCompany(rscd.getString("insuranceCompanyName"));
				policyDetailForm.setBranch(rscd.getString("branchOfCompany"));
				policyDetailForm.setReferencePerson(rscd.getString("referPerson"));
				policyDetailForm.setDateOfInward(rscd.getString("dateOfInward"));
				policyDetailForm.setRiskStartDate(rscd.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(rscd.getString("riskEndDate"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));
				policyDetailForm.setRiskAddress(rscd.getString("riskAddress"));
				policyDetailForm.setRiskPincode(rscd.getString("riskPincode"));
				policyDetailForm.setExpirypolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setPolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setCity(rscd.getString("city"));
				policyDetailForm.setState(rscd.getString("state"));
				policyDetailForm.setCountry(rscd.getString("country"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));

				/* get policy id */
				String str = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs = dbOperation.executeSelect(str);
				while (rs.next())
				{
					policyID = rs.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}

					String str2 = " select sum(SumInsINR) ,sum(policyRate),sum(totalPremiumPaid),sum(serviceTax),sum(stampDuty),sum(tpPremium),sum(discount),sum(premiumBeforeTerroAndTax),sum(terrorismPremium),sum(premiumNetOfServiceTax),sum(number),sum(premiumPayable),sum(ownDamagePremium),sum(brokerage),sum(premiumEligibleForBrokerage),sum(brokerageAmount),sum(noOfWorkers),sum(totalSumInsuredPerAnnum),sum(rate),sum(salaryPM) from  sum_insured_detail where pcID='" + pcID + "';";
					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{

						// form1.setParticulars(rs2.getString("particulars"));
						// form1.setDateOfBirth(rs2.getString("dateOfBirth"));
						// form1.setRenewalDate(rs2.getString("renewalDate"));
						form1.setPolicyRate(rs2.getDouble("sum(policyRate)"));
						form1.setServiceTax(rs2.getDouble("sum(serviceTax)"));
						form1.setDiscount(rs2.getDouble("sum(discount)"));
						form1.setPremiumBeforeTerroAndTax(rs2.getDouble("sum(premiumBeforeTerroAndTax)"));
						form1.setTerrorismPremium(rs2.getDouble("sum(terrorismPremium)"));
						form1.setPremiumNetOfServiceTax(rs2.getDouble("sum(premiumNetOfServiceTax)"));
						form1.setPremiumPayable(rs2.getDouble("sum(premiumPayable)"));
						form1.setOwnDamagePremium(rs2.getDouble("sum(ownDamagePremium)"));
						form1.setBrokerage(rs2.getDouble("sum(brokerage)"));
						form1.setPremiumEligibleForBrokerage(rs2.getDouble("sum(premiumEligibleForBrokerage)"));
						form1.setBrokerageAmount(rs2.getDouble("sum(brokerageAmount)"));
						form1.setTotalSumInsuredPerAnnum(rs2.getDouble("sum(totalSumInsuredPerAnnum)"));
						form1.setRate(rs2.getDouble("sum(rate)"));
						form1.setSumInsINR(rs2.getInt("sum(SumInsINR)"));
						form1.setStampDuty(rs2.getInt("sum(stampDuty)"));
						form1.setNumber(rs2.getInt("sum(number)"));
						form1.setNoOfWorkers(rs2.getInt("sum(noOfWorkers)"));
						form1.setSalaryPM(rs2.getInt("sum(salaryPM)"));
						sumInsuredFormList.add(form1);
					}

					/* get brokrage detail */

					String brokrageStr = " select * from brokeragedetail where pcID='" + pcID + "';";
					ResultSet brokrageResult = dbOperation.executeSelect(brokrageStr);

					while (brokrageResult.next())
					{

						BrokerageDetailForm brokerageDetailForm2 = new BrokerageDetailForm();

						brokerageDetailForm2.setShareOfCompany(brokrageResult.getDouble("shareofCompany"));
						brokerageDetailForm2.setPercentage(brokrageResult.getDouble("percentage"));
						brokerageDetailForm2.setInsuranceCompanyName(brokrageResult.getString("insuranceCompanyName"));
						brokerageDetailForm2.setAmount(brokrageResult.getDouble("amount"));

						brokerageDetailFormList.add(brokerageDetailForm2);
					}

					String selectOtherDetailProc = "{call usp_policyDataShow(?)}";
					callableStatement = dbConnection.prepareCall(selectOtherDetailProc);
					callableStatement.setInt(1, pcID);
					ResultSet rs4 = callableStatement.executeQuery();
					while (rs4.next())
					{

						//						brokerageDetailForm.setInsuranceCompanyName(rs4.getString("insuranceCompanyName"));
						//						brokerageDetailForm.setPercentage(rs4.getDouble("percentage"));
						//						brokerageDetailForm.setAmount(rs4.getDouble("amount"));

						hypothicationDetailForm.setNameOfBank(rs4.getString("NameOfBank"));
						hypothicationDetailForm.setBranch(rs4.getString("Branch"));
						hypothicationDetailForm.setCity(rs4.getString("city"));

						coInsuranceDetailForm.setCompanyName(rs4.getString("CompanyName"));
						coInsuranceDetailForm.setShareOfCompany(rs4.getDouble("shareOfCompany"));

						paymentDetailForm.setModeOfPayment(rs4.getString("modeOfPayment"));
						paymentDetailForm.setBankName(rs4.getString("bankName"));
						paymentDetailForm.setChequeOrDDAmount(rs4.getString("chequeOrDDAmount"));
						paymentDetailForm.setChequeOrDDDate(rs4.getString("chequeOrDDDate"));
						paymentDetailForm.setChequeOrDDNo(rs4.getString("chequeOrDDNo"));

						hypothicationDetailFormList.add(hypothicationDetailForm);
						insuranceDetailFormList.add(coInsuranceDetailForm);
						paymentDetailFormlist.add(paymentDetailForm);

					}
					clientDetailFormlist.add(form);
					policyDetailFormList.add(policyDetailForm);

				}

			}

			System.out.println(policyDetailFormList.size());
			System.out.println(clientDetailFormlist.size());
			System.out.println(sumInsuredFormList.size());
			System.out.println(paymentDetailFormlist.size());
			System.out.println(insuranceDetailFormList.size());
			System.out.println(hypothicationDetailFormList.size());
			policyDetailDomain.setBrokerageDetailFormList(brokerageDetailFormList);
			policyDetailDomain.setHypothicationDetailFormList(hypothicationDetailFormList);
			policyDetailDomain.setInsuranceDetailFormList(insuranceDetailFormList);
			policyDetailDomain.setPaymentDetailFormlist(paymentDetailFormlist);
			policyDetailDomain.setSumInsuredFormList(sumInsuredFormList);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);
			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public PolicyDetailDomain getReportByDateOfInward(String startDate, String endDate)
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList = null;
		List<SumInsuredForm> sumInsuredFormList = null;
		List<BrokerageDetailForm> brokerageDetailFormList = null;
		List<HypothicationDetailForm> hypothicationDetailFormList = null;
		List<CoInsuranceDetailForm> insuranceDetailFormList = null;
		List<PaymentDetailForm> paymentDetailFormlist = null;
		List<ClientDetailForm> clientDetailFormlist = null;

		DbOperation dbOperation = new DbOperation();
		int policyID = 0;
		int pcID = 0;
		try
		{
			dbConnection = DBConnection.getConnection();

			String clientDetail = "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID AND (policy_detail.dateOfInward BETWEEN '" + startDate + "' AND '" + endDate + "');";
			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();
			hypothicationDetailFormList = new ArrayList<HypothicationDetailForm>();
			insuranceDetailFormList = new ArrayList<CoInsuranceDetailForm>();
			paymentDetailFormlist = new ArrayList<PaymentDetailForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				HypothicationDetailForm hypothicationDetailForm = new HypothicationDetailForm();
				CoInsuranceDetailForm coInsuranceDetailForm = new CoInsuranceDetailForm();
				PaymentDetailForm paymentDetailForm = new PaymentDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setAddress(rscd.getString("address"));
				form.setContactPerson(rscd.getString("contactPerson"));
				form.setPincode(rscd.getString("pincode"));
				form.setOfficeNo(rscd.getString("officeNo"));
				form.setFaxNo(rscd.getString("faxNo"));
				form.setMobileNo(rscd.getString("mobileNo"));
				form.setRmName(rscd.getString("rmName"));
				form.setEmail(rscd.getString("emailId"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));
				policyDetailForm.setInsuranceCompany(rscd.getString("insuranceCompanyName"));
				policyDetailForm.setBranch(rscd.getString("branchOfCompany"));
				policyDetailForm.setReferencePerson(rscd.getString("referPerson"));
				policyDetailForm.setDateOfInward(rscd.getString("dateOfInward"));
				policyDetailForm.setRiskStartDate(rscd.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(rscd.getString("riskEndDate"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));
				policyDetailForm.setRiskAddress(rscd.getString("riskAddress"));
				policyDetailForm.setRiskPincode(rscd.getString("riskPincode"));
				policyDetailForm.setExpirypolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setPolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setCity(rscd.getString("city"));
				policyDetailForm.setState(rscd.getString("state"));
				policyDetailForm.setCountry(rscd.getString("country"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));

				/* get policy id */
				String str = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs = dbOperation.executeSelect(str);
				while (rs.next())
				{
					policyID = rs.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}

					String str2 = " select sum(SumInsINR) ,sum(policyRate),sum(totalPremiumPaid),sum(serviceTax),sum(stampDuty),sum(tpPremium),sum(discount),sum(premiumBeforeTerroAndTax),sum(terrorismPremium),sum(premiumNetOfServiceTax),sum(number),sum(premiumPayable),sum(ownDamagePremium),sum(brokerage),sum(premiumEligibleForBrokerage),sum(brokerageAmount),sum(noOfWorkers),sum(totalSumInsuredPerAnnum),sum(rate),sum(salaryPM) from  sum_insured_detail where pcID='" + pcID + "';";
					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{

						// form1.setParticulars(rs2.getString("particulars"));
						// form1.setDateOfBirth(rs2.getString("dateOfBirth"));
						// form1.setRenewalDate(rs2.getString("renewalDate"));
						form1.setPolicyRate(rs2.getDouble("sum(policyRate)"));
						form1.setServiceTax(rs2.getDouble("sum(serviceTax)"));
						form1.setDiscount(rs2.getDouble("sum(discount)"));
						form1.setPremiumBeforeTerroAndTax(rs2.getDouble("sum(premiumBeforeTerroAndTax)"));
						form1.setTerrorismPremium(rs2.getDouble("sum(terrorismPremium)"));
						form1.setPremiumNetOfServiceTax(rs2.getDouble("sum(premiumNetOfServiceTax)"));
						form1.setPremiumPayable(rs2.getDouble("sum(premiumPayable)"));
						form1.setOwnDamagePremium(rs2.getDouble("sum(ownDamagePremium)"));
						form1.setBrokerage(rs2.getDouble("sum(brokerage)"));
						form1.setPremiumEligibleForBrokerage(rs2.getDouble("sum(premiumEligibleForBrokerage)"));
						form1.setBrokerageAmount(rs2.getDouble("sum(brokerageAmount)"));
						form1.setTotalSumInsuredPerAnnum(rs2.getDouble("sum(totalSumInsuredPerAnnum)"));
						form1.setRate(rs2.getDouble("sum(rate)"));
						form1.setSumInsINR(rs2.getInt("sum(SumInsINR)"));
						form1.setStampDuty(rs2.getInt("sum(stampDuty)"));
						form1.setNumber(rs2.getInt("sum(number)"));
						form1.setNoOfWorkers(rs2.getInt("sum(noOfWorkers)"));
						form1.setSalaryPM(rs2.getInt("sum(salaryPM)"));
						sumInsuredFormList.add(form1);
					}

					
					String brokrageStr = " select * from brokeragedetail where pcID='" + pcID + "';";
					ResultSet brokrageResult = dbOperation.executeSelect(brokrageStr);

					
					while (brokrageResult.next())
					{

						BrokerageDetailForm brokerageDetailForm2 = new BrokerageDetailForm();

						brokerageDetailForm2.setShareOfCompany(brokrageResult.getDouble("shareofCompany"));
						brokerageDetailForm2.setPercentage(brokrageResult.getDouble("percentage"));
						brokerageDetailForm2.setInsuranceCompanyName(brokrageResult.getString("insuranceCompanyName"));
						brokerageDetailForm2.setAmount(brokrageResult.getDouble("amount"));

						brokerageDetailFormList.add(brokerageDetailForm2);
					}
					
					String selectOtherDetailProc = "{call usp_policyDataShow(?)}";
					callableStatement = dbConnection.prepareCall(selectOtherDetailProc);
					callableStatement.setInt(1, pcID);
					ResultSet rs4 = callableStatement.executeQuery();
					while (rs4.next())
					{

						// brokerageDetailForm.setInsuranceCompanyName(rs4
						// .getString("insuranceCompanyName"));
						// brokerageDetailForm.setPercentage(rs4
						// .getDouble("percentage"));
						// brokerageDetailForm.setAmount(rs4.getDouble("amount"));

						hypothicationDetailForm.setNameOfBank(rs4.getString("NameOfBank"));
						hypothicationDetailForm.setBranch(rs4.getString("Branch"));
						hypothicationDetailForm.setCity(rs4.getString("city"));

						coInsuranceDetailForm.setCompanyName(rs4.getString("CompanyName"));
						coInsuranceDetailForm.setShareOfCompany(rs4.getDouble("shareOfCompany"));

						paymentDetailForm.setModeOfPayment(rs4.getString("modeOfPayment"));
						paymentDetailForm.setBankName(rs4.getString("bankName"));
						paymentDetailForm.setChequeOrDDAmount(rs4.getString("chequeOrDDAmount"));
						paymentDetailForm.setChequeOrDDDate(rs4.getString("chequeOrDDDate"));
						paymentDetailForm.setChequeOrDDNo(rs4.getString("chequeOrDDNo"));

						// brokerageDetailFormList.add(brokerageDetailForm);
						hypothicationDetailFormList.add(hypothicationDetailForm);
						insuranceDetailFormList.add(coInsuranceDetailForm);
						paymentDetailFormlist.add(paymentDetailForm);

					}
					clientDetailFormlist.add(form);
					policyDetailFormList.add(policyDetailForm);

				}

			}

			System.out.println(policyDetailFormList.size());
			System.out.println(clientDetailFormlist.size());
			System.out.println(sumInsuredFormList.size());
			System.out.println(paymentDetailFormlist.size());
			System.out.println(insuranceDetailFormList.size());
			System.out.println(hypothicationDetailFormList.size());
			policyDetailDomain.setBrokerageDetailFormList(brokerageDetailFormList);
			policyDetailDomain.setHypothicationDetailFormList(hypothicationDetailFormList);
			policyDetailDomain.setInsuranceDetailFormList(insuranceDetailFormList);
			policyDetailDomain.setPaymentDetailFormlist(paymentDetailFormlist);
			policyDetailDomain.setSumInsuredFormList(sumInsuredFormList);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);
			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public PolicyDetailDomain getReportPolicyStartDate(String startDate, String endDate)
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList = null;
		List<SumInsuredForm> sumInsuredFormList = null;
		List<BrokerageDetailForm> brokerageDetailFormList = null;
		List<HypothicationDetailForm> hypothicationDetailFormList = null;
		List<CoInsuranceDetailForm> insuranceDetailFormList = null;
		List<PaymentDetailForm> paymentDetailFormlist = null;
		List<ClientDetailForm> clientDetailFormlist = null;

		DbOperation dbOperation = new DbOperation();
		int policyID = 0;
		int pcID = 0;
		try
		{
			dbConnection = DBConnection.getConnection();

			String clientDetail = "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID AND (policy_detail.riskStartDate BETWEEN '" + startDate + "' AND '" + endDate + "');";
			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();
			hypothicationDetailFormList = new ArrayList<HypothicationDetailForm>();
			insuranceDetailFormList = new ArrayList<CoInsuranceDetailForm>();
			paymentDetailFormlist = new ArrayList<PaymentDetailForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				HypothicationDetailForm hypothicationDetailForm = new HypothicationDetailForm();
				CoInsuranceDetailForm coInsuranceDetailForm = new CoInsuranceDetailForm();
				PaymentDetailForm paymentDetailForm = new PaymentDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setAddress(rscd.getString("address"));
				form.setContactPerson(rscd.getString("contactPerson"));
				form.setPincode(rscd.getString("pincode"));
				form.setOfficeNo(rscd.getString("officeNo"));
				form.setFaxNo(rscd.getString("faxNo"));
				form.setMobileNo(rscd.getString("mobileNo"));
				form.setRmName(rscd.getString("rmName"));
				form.setEmail(rscd.getString("emailId"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));
				policyDetailForm.setInsuranceCompany(rscd.getString("insuranceCompanyName"));
				policyDetailForm.setBranch(rscd.getString("branchOfCompany"));
				policyDetailForm.setReferencePerson(rscd.getString("referPerson"));
				policyDetailForm.setDateOfInward(rscd.getString("dateOfInward"));
				policyDetailForm.setRiskStartDate(rscd.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(rscd.getString("riskEndDate"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));
				policyDetailForm.setRiskAddress(rscd.getString("riskAddress"));
				policyDetailForm.setRiskPincode(rscd.getString("riskPincode"));
				policyDetailForm.setExpirypolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setPolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setCity(rscd.getString("city"));
				policyDetailForm.setState(rscd.getString("state"));
				policyDetailForm.setCountry(rscd.getString("country"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));

				/* get policy id */
				String str = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs = dbOperation.executeSelect(str);
				while (rs.next())
				{
					policyID = rs.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}

					String str2 = " select sum(SumInsINR) ,sum(policyRate),sum(totalPremiumPaid),sum(serviceTax),sum(stampDuty),sum(tpPremium),sum(discount),sum(premiumBeforeTerroAndTax),sum(terrorismPremium),sum(premiumNetOfServiceTax),sum(number),sum(premiumPayable),sum(ownDamagePremium),sum(brokerage),sum(premiumEligibleForBrokerage),sum(brokerageAmount),sum(noOfWorkers),sum(totalSumInsuredPerAnnum),sum(rate),sum(salaryPM) from  sum_insured_detail where pcID='" + pcID + "';";
					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{

						// form1.setParticulars(rs2.getString("particulars"));
						// form1.setDateOfBirth(rs2.getString("dateOfBirth"));
						// form1.setRenewalDate(rs2.getString("renewalDate"));
						form1.setPolicyRate(rs2.getDouble("sum(policyRate)"));
						form1.setServiceTax(rs2.getDouble("sum(serviceTax)"));
						form1.setDiscount(rs2.getDouble("sum(discount)"));
						form1.setPremiumBeforeTerroAndTax(rs2.getDouble("sum(premiumBeforeTerroAndTax)"));
						form1.setTerrorismPremium(rs2.getDouble("sum(terrorismPremium)"));
						form1.setPremiumNetOfServiceTax(rs2.getDouble("sum(premiumNetOfServiceTax)"));
						form1.setPremiumPayable(rs2.getDouble("sum(premiumPayable)"));
						form1.setOwnDamagePremium(rs2.getDouble("sum(ownDamagePremium)"));
						form1.setBrokerage(rs2.getDouble("sum(brokerage)"));
						form1.setPremiumEligibleForBrokerage(rs2.getDouble("sum(premiumEligibleForBrokerage)"));
						form1.setBrokerageAmount(rs2.getDouble("sum(brokerageAmount)"));
						form1.setTotalSumInsuredPerAnnum(rs2.getDouble("sum(totalSumInsuredPerAnnum)"));
						form1.setRate(rs2.getDouble("sum(rate)"));
						form1.setSumInsINR(rs2.getInt("sum(SumInsINR)"));
						form1.setStampDuty(rs2.getInt("sum(stampDuty)"));
						form1.setNumber(rs2.getInt("sum(number)"));
						form1.setNoOfWorkers(rs2.getInt("sum(noOfWorkers)"));
						form1.setSalaryPM(rs2.getInt("sum(salaryPM)"));
						sumInsuredFormList.add(form1);
					}

					String brokrageStr = " select * from brokeragedetail where pcID='" + pcID + "';";
					ResultSet brokrageResult = dbOperation.executeSelect(brokrageStr);

					while (brokrageResult.next())
					{

						BrokerageDetailForm brokerageDetailForm2 = new BrokerageDetailForm();

						brokerageDetailForm2.setShareOfCompany(brokrageResult.getDouble("shareofCompany"));
						brokerageDetailForm2.setPercentage(brokrageResult.getDouble("percentage"));
						brokerageDetailForm2.setInsuranceCompanyName(brokrageResult.getString("insuranceCompanyName"));
						brokerageDetailForm2.setAmount(brokrageResult.getDouble("amount"));

						brokerageDetailFormList.add(brokerageDetailForm2);
					}

					String selectOtherDetailProc = "{call usp_policyDataShow(?)}";
					callableStatement = dbConnection.prepareCall(selectOtherDetailProc);
					callableStatement.setInt(1, pcID);
					ResultSet rs4 = callableStatement.executeQuery();
					while (rs4.next())
					{

						// brokerageDetailForm.setInsuranceCompanyName(rs4
						// .getString("insuranceCompanyName"));
						// brokerageDetailForm.setPercentage(rs4
						// .getDouble("percentage"));
						// brokerageDetailForm.setAmount(rs4.getDouble("amount"));

						hypothicationDetailForm.setNameOfBank(rs4.getString("NameOfBank"));
						hypothicationDetailForm.setBranch(rs4.getString("Branch"));
						hypothicationDetailForm.setCity(rs4.getString("city"));

						coInsuranceDetailForm.setCompanyName(rs4.getString("CompanyName"));
						coInsuranceDetailForm.setShareOfCompany(rs4.getDouble("shareOfCompany"));

						paymentDetailForm.setModeOfPayment(rs4.getString("modeOfPayment"));
						paymentDetailForm.setBankName(rs4.getString("bankName"));
						paymentDetailForm.setChequeOrDDAmount(rs4.getString("chequeOrDDAmount"));
						paymentDetailForm.setChequeOrDDDate(rs4.getString("chequeOrDDDate"));
						paymentDetailForm.setChequeOrDDNo(rs4.getString("chequeOrDDNo"));

						// brokerageDetailFormList.add(brokerageDetailForm);
						hypothicationDetailFormList.add(hypothicationDetailForm);
						insuranceDetailFormList.add(coInsuranceDetailForm);
						paymentDetailFormlist.add(paymentDetailForm);

					}
					clientDetailFormlist.add(form);
					policyDetailFormList.add(policyDetailForm);

				}

			}

			System.out.println(policyDetailFormList.size());
			System.out.println(clientDetailFormlist.size());
			System.out.println(sumInsuredFormList.size());
			System.out.println(paymentDetailFormlist.size());
			System.out.println(insuranceDetailFormList.size());
			System.out.println(hypothicationDetailFormList.size());
			policyDetailDomain.setBrokerageDetailFormList(brokerageDetailFormList);
			policyDetailDomain.setHypothicationDetailFormList(hypothicationDetailFormList);
			policyDetailDomain.setInsuranceDetailFormList(insuranceDetailFormList);
			policyDetailDomain.setPaymentDetailFormlist(paymentDetailFormlist);
			policyDetailDomain.setSumInsuredFormList(sumInsuredFormList);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);
			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public PolicyDetailDomain getReportByPolicyEndDate(String startDate, String endDate)
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList = null;
		List<SumInsuredForm> sumInsuredFormList = null;
		List<BrokerageDetailForm> brokerageDetailFormList = null;
		List<HypothicationDetailForm> hypothicationDetailFormList = null;
		List<CoInsuranceDetailForm> insuranceDetailFormList = null;
		List<PaymentDetailForm> paymentDetailFormlist = null;
		List<ClientDetailForm> clientDetailFormlist = null;

		DbOperation dbOperation = new DbOperation();
		int policyID = 0;
		int pcID = 0;
		try
		{
			dbConnection = DBConnection.getConnection();

			String clientDetail = "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID AND (policy_detail.riskEndDate BETWEEN '" + startDate + "' AND '" + endDate + "');";
			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();
			hypothicationDetailFormList = new ArrayList<HypothicationDetailForm>();
			insuranceDetailFormList = new ArrayList<CoInsuranceDetailForm>();
			paymentDetailFormlist = new ArrayList<PaymentDetailForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				HypothicationDetailForm hypothicationDetailForm = new HypothicationDetailForm();
				CoInsuranceDetailForm coInsuranceDetailForm = new CoInsuranceDetailForm();
				PaymentDetailForm paymentDetailForm = new PaymentDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setAddress(rscd.getString("address"));
				form.setContactPerson(rscd.getString("contactPerson"));
				form.setPincode(rscd.getString("pincode"));
				form.setOfficeNo(rscd.getString("officeNo"));
				form.setFaxNo(rscd.getString("faxNo"));
				form.setMobileNo(rscd.getString("mobileNo"));
				form.setRmName(rscd.getString("rmName"));
				form.setEmail(rscd.getString("emailId"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));
				policyDetailForm.setInsuranceCompany(rscd.getString("insuranceCompanyName"));
				policyDetailForm.setBranch(rscd.getString("branchOfCompany"));
				policyDetailForm.setReferencePerson(rscd.getString("referPerson"));
				policyDetailForm.setDateOfInward(rscd.getString("dateOfInward"));
				policyDetailForm.setRiskStartDate(rscd.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(rscd.getString("riskEndDate"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));
				policyDetailForm.setRiskAddress(rscd.getString("riskAddress"));
				policyDetailForm.setRiskPincode(rscd.getString("riskPincode"));
				policyDetailForm.setExpirypolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setPolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setCity(rscd.getString("city"));
				policyDetailForm.setState(rscd.getString("state"));
				policyDetailForm.setCountry(rscd.getString("country"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));

				/* get policy id */
				String str = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs = dbOperation.executeSelect(str);
				while (rs.next())
				{
					policyID = rs.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}

					String str2 = " select sum(SumInsINR) ,sum(policyRate),sum(totalPremiumPaid),sum(serviceTax),sum(stampDuty),sum(tpPremium),sum(discount),sum(premiumBeforeTerroAndTax),sum(terrorismPremium),sum(premiumNetOfServiceTax),sum(number),sum(premiumPayable),sum(ownDamagePremium),sum(brokerage),sum(premiumEligibleForBrokerage),sum(brokerageAmount),sum(noOfWorkers),sum(totalSumInsuredPerAnnum),sum(rate),sum(salaryPM) from  sum_insured_detail where pcID='" + pcID + "';";
					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{

						// form1.setParticulars(rs2.getString("particulars"));
						// form1.setDateOfBirth(rs2.getString("dateOfBirth"));
						// form1.setRenewalDate(rs2.getString("renewalDate"));
						form1.setPolicyRate(rs2.getDouble("sum(policyRate)"));
						form1.setServiceTax(rs2.getDouble("sum(serviceTax)"));
						form1.setDiscount(rs2.getDouble("sum(discount)"));
						form1.setPremiumBeforeTerroAndTax(rs2.getDouble("sum(premiumBeforeTerroAndTax)"));
						form1.setTerrorismPremium(rs2.getDouble("sum(terrorismPremium)"));
						form1.setPremiumNetOfServiceTax(rs2.getDouble("sum(premiumNetOfServiceTax)"));
						form1.setPremiumPayable(rs2.getDouble("sum(premiumPayable)"));
						form1.setOwnDamagePremium(rs2.getDouble("sum(ownDamagePremium)"));
						form1.setBrokerage(rs2.getDouble("sum(brokerage)"));
						form1.setPremiumEligibleForBrokerage(rs2.getDouble("sum(premiumEligibleForBrokerage)"));
						form1.setBrokerageAmount(rs2.getDouble("sum(brokerageAmount)"));
						form1.setTotalSumInsuredPerAnnum(rs2.getDouble("sum(totalSumInsuredPerAnnum)"));
						form1.setRate(rs2.getDouble("sum(rate)"));
						form1.setSumInsINR(rs2.getInt("sum(SumInsINR)"));
						form1.setStampDuty(rs2.getInt("sum(stampDuty)"));
						form1.setNumber(rs2.getInt("sum(number)"));
						form1.setNoOfWorkers(rs2.getInt("sum(noOfWorkers)"));
						form1.setSalaryPM(rs2.getInt("sum(salaryPM)"));
						sumInsuredFormList.add(form1);
					}

					String brokrageStr = " select * from brokeragedetail where pcID='" + pcID + "';";
					ResultSet brokrageResult = dbOperation.executeSelect(brokrageStr);

					while (brokrageResult.next())
					{

						BrokerageDetailForm brokerageDetailForm2 = new BrokerageDetailForm();

						brokerageDetailForm2.setShareOfCompany(brokrageResult.getDouble("shareofCompany"));
						brokerageDetailForm2.setPercentage(brokrageResult.getDouble("percentage"));
						brokerageDetailForm2.setInsuranceCompanyName(brokrageResult.getString("insuranceCompanyName"));
						brokerageDetailForm2.setAmount(brokrageResult.getDouble("amount"));

						brokerageDetailFormList.add(brokerageDetailForm2);
					}

					String selectOtherDetailProc = "{call usp_policyDataShow(?)}";
					callableStatement = dbConnection.prepareCall(selectOtherDetailProc);
					callableStatement.setInt(1, pcID);
					ResultSet rs4 = callableStatement.executeQuery();
					while (rs4.next())
					{

						// brokerageDetailForm.setInsuranceCompanyName(rs4
						// .getString("insuranceCompanyName"));
						// brokerageDetailForm.setPercentage(rs4
						// .getDouble("percentage"));
						// brokerageDetailForm.setAmount(rs4.getDouble("amount"));

						hypothicationDetailForm.setNameOfBank(rs4.getString("NameOfBank"));
						hypothicationDetailForm.setBranch(rs4.getString("Branch"));
						hypothicationDetailForm.setCity(rs4.getString("city"));

						coInsuranceDetailForm.setCompanyName(rs4.getString("CompanyName"));
						coInsuranceDetailForm.setShareOfCompany(rs4.getDouble("shareOfCompany"));

						paymentDetailForm.setModeOfPayment(rs4.getString("modeOfPayment"));
						paymentDetailForm.setBankName(rs4.getString("bankName"));
						paymentDetailForm.setChequeOrDDAmount(rs4.getString("chequeOrDDAmount"));
						paymentDetailForm.setChequeOrDDDate(rs4.getString("chequeOrDDDate"));
						paymentDetailForm.setChequeOrDDNo(rs4.getString("chequeOrDDNo"));

						// brokerageDetailFormList.add(brokerageDetailForm);
						hypothicationDetailFormList.add(hypothicationDetailForm);
						insuranceDetailFormList.add(coInsuranceDetailForm);
						paymentDetailFormlist.add(paymentDetailForm);

					}
					clientDetailFormlist.add(form);
					policyDetailFormList.add(policyDetailForm);

				}

			}

			System.out.println(policyDetailFormList.size());
			System.out.println(clientDetailFormlist.size());
			System.out.println(sumInsuredFormList.size());
			System.out.println(paymentDetailFormlist.size());
			System.out.println(insuranceDetailFormList.size());
			System.out.println(hypothicationDetailFormList.size());
			policyDetailDomain.setBrokerageDetailFormList(brokerageDetailFormList);
			policyDetailDomain.setHypothicationDetailFormList(hypothicationDetailFormList);
			policyDetailDomain.setInsuranceDetailFormList(insuranceDetailFormList);
			policyDetailDomain.setPaymentDetailFormlist(paymentDetailFormlist);
			policyDetailDomain.setSumInsuredFormList(sumInsuredFormList);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);
			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public PolicyDetailDomain getReportByInsuredName(String insuredName)
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList = null;
		List<SumInsuredForm> sumInsuredFormList = null;
		List<BrokerageDetailForm> brokerageDetailFormList = null;
		List<HypothicationDetailForm> hypothicationDetailFormList = null;
		List<CoInsuranceDetailForm> insuranceDetailFormList = null;
		List<PaymentDetailForm> paymentDetailFormlist = null;
		List<ClientDetailForm> clientDetailFormlist = null;

		DbOperation dbOperation = new DbOperation();
		int policyID = 0;
		int pcID = 0;
		try
		{
			dbConnection = DBConnection.getConnection();

			String clientDetail = "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID AND (client_detail.insuredName = '" + insuredName + "');";
			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();
			hypothicationDetailFormList = new ArrayList<HypothicationDetailForm>();
			insuranceDetailFormList = new ArrayList<CoInsuranceDetailForm>();
			paymentDetailFormlist = new ArrayList<PaymentDetailForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				HypothicationDetailForm hypothicationDetailForm = new HypothicationDetailForm();
				CoInsuranceDetailForm coInsuranceDetailForm = new CoInsuranceDetailForm();
				PaymentDetailForm paymentDetailForm = new PaymentDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setAddress(rscd.getString("address"));
				form.setContactPerson(rscd.getString("contactPerson"));
				form.setPincode(rscd.getString("pincode"));
				form.setOfficeNo(rscd.getString("officeNo"));
				form.setFaxNo(rscd.getString("faxNo"));
				form.setMobileNo(rscd.getString("mobileNo"));
				form.setRmName(rscd.getString("rmName"));
				form.setEmail(rscd.getString("emailId"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));
				policyDetailForm.setInsuranceCompany(rscd.getString("insuranceCompanyName"));
				policyDetailForm.setBranch(rscd.getString("branchOfCompany"));
				policyDetailForm.setReferencePerson(rscd.getString("referPerson"));
				policyDetailForm.setDateOfInward(rscd.getString("dateOfInward"));
				policyDetailForm.setRiskStartDate(rscd.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(rscd.getString("riskEndDate"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));
				policyDetailForm.setRiskAddress(rscd.getString("riskAddress"));
				policyDetailForm.setRiskPincode(rscd.getString("riskPincode"));
				policyDetailForm.setExpirypolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setPolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setCity(rscd.getString("city"));
				policyDetailForm.setState(rscd.getString("state"));
				policyDetailForm.setCountry(rscd.getString("country"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));

				/* get policy id */
				String str = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs = dbOperation.executeSelect(str);
				while (rs.next())
				{
					policyID = rs.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}

					String str2 = " select sum(SumInsINR) ,sum(policyRate),sum(totalPremiumPaid),sum(serviceTax),sum(stampDuty),sum(tpPremium),sum(discount),sum(premiumBeforeTerroAndTax),sum(terrorismPremium),sum(premiumNetOfServiceTax),sum(number),sum(premiumPayable),sum(ownDamagePremium),sum(brokerage),sum(premiumEligibleForBrokerage),sum(brokerageAmount),sum(noOfWorkers),sum(totalSumInsuredPerAnnum),sum(rate),sum(salaryPM) from  sum_insured_detail where pcID='" + pcID + "';";
					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{

						// form1.setParticulars(rs2.getString("particulars"));
						// form1.setDateOfBirth(rs2.getString("dateOfBirth"));
						// form1.setRenewalDate(rs2.getString("renewalDate"));
						form1.setPolicyRate(rs2.getDouble("sum(policyRate)"));
						form1.setServiceTax(rs2.getDouble("sum(serviceTax)"));
						form1.setDiscount(rs2.getDouble("sum(discount)"));
						form1.setPremiumBeforeTerroAndTax(rs2.getDouble("sum(premiumBeforeTerroAndTax)"));
						form1.setTerrorismPremium(rs2.getDouble("sum(terrorismPremium)"));
						form1.setPremiumNetOfServiceTax(rs2.getDouble("sum(premiumNetOfServiceTax)"));
						form1.setPremiumPayable(rs2.getDouble("sum(premiumPayable)"));
						form1.setOwnDamagePremium(rs2.getDouble("sum(ownDamagePremium)"));
						form1.setBrokerage(rs2.getDouble("sum(brokerage)"));
						form1.setPremiumEligibleForBrokerage(rs2.getDouble("sum(premiumEligibleForBrokerage)"));
						form1.setBrokerageAmount(rs2.getDouble("sum(brokerageAmount)"));
						form1.setTotalSumInsuredPerAnnum(rs2.getDouble("sum(totalSumInsuredPerAnnum)"));
						form1.setRate(rs2.getDouble("sum(rate)"));
						form1.setSumInsINR(rs2.getInt("sum(SumInsINR)"));
						form1.setStampDuty(rs2.getInt("sum(stampDuty)"));
						form1.setNumber(rs2.getInt("sum(number)"));
						form1.setNoOfWorkers(rs2.getInt("sum(noOfWorkers)"));
						form1.setSalaryPM(rs2.getInt("sum(salaryPM)"));
						sumInsuredFormList.add(form1);
					}

					String brokrageStr = " select * from brokeragedetail where pcID='" + pcID + "';";
					ResultSet brokrageResult = dbOperation.executeSelect(brokrageStr);

					while (brokrageResult.next())
					{

						BrokerageDetailForm brokerageDetailForm2 = new BrokerageDetailForm();

						brokerageDetailForm2.setShareOfCompany(brokrageResult.getDouble("shareofCompany"));
						brokerageDetailForm2.setPercentage(brokrageResult.getDouble("percentage"));
						brokerageDetailForm2.setInsuranceCompanyName(brokrageResult.getString("insuranceCompanyName"));
						brokerageDetailForm2.setAmount(brokrageResult.getDouble("amount"));

						brokerageDetailFormList.add(brokerageDetailForm2);
					}

					String selectOtherDetailProc = "{call usp_policyDataShow(?)}";
					callableStatement = dbConnection.prepareCall(selectOtherDetailProc);
					callableStatement.setInt(1, pcID);
					ResultSet rs4 = callableStatement.executeQuery();
					while (rs4.next())
					{

						// brokerageDetailForm.setInsuranceCompanyName(rs4
						// .getString("insuranceCompanyName"));
						// brokerageDetailForm.setPercentage(rs4
						// .getDouble("percentage"));
						// brokerageDetailForm.setAmount(rs4.getDouble("amount"));

						hypothicationDetailForm.setNameOfBank(rs4.getString("NameOfBank"));
						hypothicationDetailForm.setBranch(rs4.getString("Branch"));
						hypothicationDetailForm.setCity(rs4.getString("city"));

						coInsuranceDetailForm.setCompanyName(rs4.getString("CompanyName"));
						coInsuranceDetailForm.setShareOfCompany(rs4.getDouble("shareOfCompany"));

						paymentDetailForm.setModeOfPayment(rs4.getString("modeOfPayment"));
						paymentDetailForm.setBankName(rs4.getString("bankName"));
						paymentDetailForm.setChequeOrDDAmount(rs4.getString("chequeOrDDAmount"));
						paymentDetailForm.setChequeOrDDDate(rs4.getString("chequeOrDDDate"));
						paymentDetailForm.setChequeOrDDNo(rs4.getString("chequeOrDDNo"));

						// brokerageDetailFormList.add(brokerageDetailForm);
						hypothicationDetailFormList.add(hypothicationDetailForm);
						insuranceDetailFormList.add(coInsuranceDetailForm);
						paymentDetailFormlist.add(paymentDetailForm);

					}
					clientDetailFormlist.add(form);
					policyDetailFormList.add(policyDetailForm);

				}

			}

			System.out.println(policyDetailFormList.size());
			System.out.println(clientDetailFormlist.size());
			System.out.println(sumInsuredFormList.size());
			System.out.println(paymentDetailFormlist.size());
			System.out.println(insuranceDetailFormList.size());
			System.out.println(hypothicationDetailFormList.size());
			policyDetailDomain.setBrokerageDetailFormList(brokerageDetailFormList);
			policyDetailDomain.setHypothicationDetailFormList(hypothicationDetailFormList);
			policyDetailDomain.setInsuranceDetailFormList(insuranceDetailFormList);
			policyDetailDomain.setPaymentDetailFormlist(paymentDetailFormlist);
			policyDetailDomain.setSumInsuredFormList(sumInsuredFormList);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);
			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public PolicyDetailDomain getReportByRelationManager(String RMName)
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList = null;
		List<SumInsuredForm> sumInsuredFormList = null;
		List<BrokerageDetailForm> brokerageDetailFormList = null;
		List<HypothicationDetailForm> hypothicationDetailFormList = null;
		List<CoInsuranceDetailForm> insuranceDetailFormList = null;
		List<PaymentDetailForm> paymentDetailFormlist = null;
		List<ClientDetailForm> clientDetailFormlist = null;

		DbOperation dbOperation = new DbOperation();
		int policyID = 0;
		int pcID = 0;
		try
		{
			dbConnection = DBConnection.getConnection();

			String clientDetail = "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID AND (client_detail.rmName = '" + RMName + "');";
			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();
			hypothicationDetailFormList = new ArrayList<HypothicationDetailForm>();
			insuranceDetailFormList = new ArrayList<CoInsuranceDetailForm>();
			paymentDetailFormlist = new ArrayList<PaymentDetailForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				HypothicationDetailForm hypothicationDetailForm = new HypothicationDetailForm();
				CoInsuranceDetailForm coInsuranceDetailForm = new CoInsuranceDetailForm();
				PaymentDetailForm paymentDetailForm = new PaymentDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setAddress(rscd.getString("address"));
				form.setContactPerson(rscd.getString("contactPerson"));
				form.setPincode(rscd.getString("pincode"));
				form.setOfficeNo(rscd.getString("officeNo"));
				form.setFaxNo(rscd.getString("faxNo"));
				form.setMobileNo(rscd.getString("mobileNo"));
				form.setRmName(rscd.getString("rmName"));
				form.setEmail(rscd.getString("emailId"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));
				policyDetailForm.setInsuranceCompany(rscd.getString("insuranceCompanyName"));
				policyDetailForm.setBranch(rscd.getString("branchOfCompany"));
				policyDetailForm.setReferencePerson(rscd.getString("referPerson"));
				policyDetailForm.setDateOfInward(rscd.getString("dateOfInward"));
				policyDetailForm.setRiskStartDate(rscd.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(rscd.getString("riskEndDate"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));
				policyDetailForm.setRiskAddress(rscd.getString("riskAddress"));
				policyDetailForm.setRiskPincode(rscd.getString("riskPincode"));
				policyDetailForm.setExpirypolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setPolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setCity(rscd.getString("city"));
				policyDetailForm.setState(rscd.getString("state"));
				policyDetailForm.setCountry(rscd.getString("country"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));

				/* get policy id */
				String str = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs = dbOperation.executeSelect(str);
				while (rs.next())
				{
					policyID = rs.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}

					String str2 = " select sum(SumInsINR) ,sum(policyRate),sum(totalPremiumPaid),sum(serviceTax),sum(stampDuty),sum(tpPremium),sum(discount),sum(premiumBeforeTerroAndTax),sum(terrorismPremium),sum(premiumNetOfServiceTax),sum(number),sum(premiumPayable),sum(ownDamagePremium),sum(brokerage),sum(premiumEligibleForBrokerage),sum(brokerageAmount),sum(noOfWorkers),sum(totalSumInsuredPerAnnum),sum(rate),sum(salaryPM) from  sum_insured_detail where pcID='" + pcID + "';";
					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{

						// form1.setParticulars(rs2.getString("particulars"));
						// form1.setDateOfBirth(rs2.getString("dateOfBirth"));
						// form1.setRenewalDate(rs2.getString("renewalDate"));
						form1.setPolicyRate(rs2.getDouble("sum(policyRate)"));
						form1.setServiceTax(rs2.getDouble("sum(serviceTax)"));
						form1.setDiscount(rs2.getDouble("sum(discount)"));
						form1.setPremiumBeforeTerroAndTax(rs2.getDouble("sum(premiumBeforeTerroAndTax)"));
						form1.setTerrorismPremium(rs2.getDouble("sum(terrorismPremium)"));
						form1.setPremiumNetOfServiceTax(rs2.getDouble("sum(premiumNetOfServiceTax)"));
						form1.setPremiumPayable(rs2.getDouble("sum(premiumPayable)"));
						form1.setOwnDamagePremium(rs2.getDouble("sum(ownDamagePremium)"));
						form1.setBrokerage(rs2.getDouble("sum(brokerage)"));
						form1.setPremiumEligibleForBrokerage(rs2.getDouble("sum(premiumEligibleForBrokerage)"));
						form1.setBrokerageAmount(rs2.getDouble("sum(brokerageAmount)"));
						form1.setTotalSumInsuredPerAnnum(rs2.getDouble("sum(totalSumInsuredPerAnnum)"));
						form1.setRate(rs2.getDouble("sum(rate)"));
						form1.setSumInsINR(rs2.getInt("sum(SumInsINR)"));
						form1.setStampDuty(rs2.getInt("sum(stampDuty)"));
						form1.setNumber(rs2.getInt("sum(number)"));
						form1.setNoOfWorkers(rs2.getInt("sum(noOfWorkers)"));
						form1.setSalaryPM(rs2.getInt("sum(salaryPM)"));
						sumInsuredFormList.add(form1);
					}

					String brokrageStr = " select * from brokeragedetail where pcID='" + pcID + "';";
					ResultSet brokrageResult = dbOperation.executeSelect(brokrageStr);

					while (brokrageResult.next())
					{

						BrokerageDetailForm brokerageDetailForm2 = new BrokerageDetailForm();

						brokerageDetailForm2.setShareOfCompany(brokrageResult.getDouble("shareofCompany"));
						brokerageDetailForm2.setPercentage(brokrageResult.getDouble("percentage"));
						brokerageDetailForm2.setInsuranceCompanyName(brokrageResult.getString("insuranceCompanyName"));
						brokerageDetailForm2.setAmount(brokrageResult.getDouble("amount"));

						brokerageDetailFormList.add(brokerageDetailForm2);
					}

					String selectOtherDetailProc = "{call usp_policyDataShow(?)}";
					callableStatement = dbConnection.prepareCall(selectOtherDetailProc);
					callableStatement.setInt(1, pcID);
					ResultSet rs4 = callableStatement.executeQuery();
					while (rs4.next())
					{

						brokerageDetailForm.setInsuranceCompanyName(rs4.getString("insuranceCompanyName"));
						brokerageDetailForm.setPercentage(rs4.getDouble("percentage"));
						brokerageDetailForm.setAmount(rs4.getDouble("amount"));

						hypothicationDetailForm.setNameOfBank(rs4.getString("NameOfBank"));
						hypothicationDetailForm.setBranch(rs4.getString("Branch"));
						hypothicationDetailForm.setCity(rs4.getString("city"));

						coInsuranceDetailForm.setCompanyName(rs4.getString("CompanyName"));
						coInsuranceDetailForm.setShareOfCompany(rs4.getDouble("shareOfCompany"));

						paymentDetailForm.setModeOfPayment(rs4.getString("modeOfPayment"));
						paymentDetailForm.setBankName(rs4.getString("bankName"));
						paymentDetailForm.setChequeOrDDAmount(rs4.getString("chequeOrDDAmount"));
						paymentDetailForm.setChequeOrDDDate(rs4.getString("chequeOrDDDate"));
						paymentDetailForm.setChequeOrDDNo(rs4.getString("chequeOrDDNo"));

						brokerageDetailFormList.add(brokerageDetailForm);
						hypothicationDetailFormList.add(hypothicationDetailForm);
						insuranceDetailFormList.add(coInsuranceDetailForm);
						paymentDetailFormlist.add(paymentDetailForm);

					}
					clientDetailFormlist.add(form);
					policyDetailFormList.add(policyDetailForm);

				}

			}

			System.out.println(policyDetailFormList.size());
			System.out.println(clientDetailFormlist.size());
			System.out.println(sumInsuredFormList.size());
			System.out.println(paymentDetailFormlist.size());
			System.out.println(insuranceDetailFormList.size());
			System.out.println(hypothicationDetailFormList.size());
			policyDetailDomain.setBrokerageDetailFormList(brokerageDetailFormList);
			policyDetailDomain.setHypothicationDetailFormList(hypothicationDetailFormList);
			policyDetailDomain.setInsuranceDetailFormList(insuranceDetailFormList);
			policyDetailDomain.setPaymentDetailFormlist(paymentDetailFormlist);
			policyDetailDomain.setSumInsuredFormList(sumInsuredFormList);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);
			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public PolicyDetailDomain getReportByInsuranceCompany(String InsuranceCompany)
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList = null;
		List<SumInsuredForm> sumInsuredFormList = null;
		List<BrokerageDetailForm> brokerageDetailFormList = null;
		List<HypothicationDetailForm> hypothicationDetailFormList = null;
		List<CoInsuranceDetailForm> insuranceDetailFormList = null;
		List<PaymentDetailForm> paymentDetailFormlist = null;
		List<ClientDetailForm> clientDetailFormlist = null;

		DbOperation dbOperation = new DbOperation();
		int policyID = 0;
		int pcID = 0;
		try
		{
			dbConnection = DBConnection.getConnection();

			String clientDetail = "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID AND (policy_detail.insuranceCompanyName = '" + InsuranceCompany + "');";
			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();
			hypothicationDetailFormList = new ArrayList<HypothicationDetailForm>();
			insuranceDetailFormList = new ArrayList<CoInsuranceDetailForm>();
			paymentDetailFormlist = new ArrayList<PaymentDetailForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				HypothicationDetailForm hypothicationDetailForm = new HypothicationDetailForm();
				CoInsuranceDetailForm coInsuranceDetailForm = new CoInsuranceDetailForm();
				PaymentDetailForm paymentDetailForm = new PaymentDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setAddress(rscd.getString("address"));
				form.setContactPerson(rscd.getString("contactPerson"));
				form.setPincode(rscd.getString("pincode"));
				form.setOfficeNo(rscd.getString("officeNo"));
				form.setFaxNo(rscd.getString("faxNo"));
				form.setMobileNo(rscd.getString("mobileNo"));
				form.setRmName(rscd.getString("rmName"));
				form.setEmail(rscd.getString("emailId"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));
				policyDetailForm.setInsuranceCompany(rscd.getString("insuranceCompanyName"));
				policyDetailForm.setBranch(rscd.getString("branchOfCompany"));
				policyDetailForm.setReferencePerson(rscd.getString("referPerson"));
				policyDetailForm.setDateOfInward(rscd.getString("dateOfInward"));
				policyDetailForm.setRiskStartDate(rscd.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(rscd.getString("riskEndDate"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));
				policyDetailForm.setRiskAddress(rscd.getString("riskAddress"));
				policyDetailForm.setRiskPincode(rscd.getString("riskPincode"));
				policyDetailForm.setExpirypolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setPolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setCity(rscd.getString("city"));
				policyDetailForm.setState(rscd.getString("state"));
				policyDetailForm.setCountry(rscd.getString("country"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));

				/* get policy id */
				String str = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs = dbOperation.executeSelect(str);
				while (rs.next())
				{
					policyID = rs.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}

					String str2 = " select sum(SumInsINR) ,sum(policyRate),sum(totalPremiumPaid),sum(serviceTax),sum(stampDuty),sum(tpPremium),sum(discount),sum(premiumBeforeTerroAndTax),sum(terrorismPremium),sum(premiumNetOfServiceTax),sum(number),sum(premiumPayable),sum(ownDamagePremium),sum(brokerage),sum(premiumEligibleForBrokerage),sum(brokerageAmount),sum(noOfWorkers),sum(totalSumInsuredPerAnnum),sum(rate),sum(salaryPM) from  sum_insured_detail where pcID='" + pcID + "';";
					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{

						// form1.setParticulars(rs2.getString("particulars"));
						// form1.setDateOfBirth(rs2.getString("dateOfBirth"));
						// form1.setRenewalDate(rs2.getString("renewalDate"));
						form1.setPolicyRate(rs2.getDouble("sum(policyRate)"));
						form1.setServiceTax(rs2.getDouble("sum(serviceTax)"));
						form1.setDiscount(rs2.getDouble("sum(discount)"));
						form1.setPremiumBeforeTerroAndTax(rs2.getDouble("sum(premiumBeforeTerroAndTax)"));
						form1.setTerrorismPremium(rs2.getDouble("sum(terrorismPremium)"));
						form1.setPremiumNetOfServiceTax(rs2.getDouble("sum(premiumNetOfServiceTax)"));
						form1.setPremiumPayable(rs2.getDouble("sum(premiumPayable)"));
						form1.setOwnDamagePremium(rs2.getDouble("sum(ownDamagePremium)"));
						form1.setBrokerage(rs2.getDouble("sum(brokerage)"));
						form1.setPremiumEligibleForBrokerage(rs2.getDouble("sum(premiumEligibleForBrokerage)"));
						form1.setBrokerageAmount(rs2.getDouble("sum(brokerageAmount)"));
						form1.setTotalSumInsuredPerAnnum(rs2.getDouble("sum(totalSumInsuredPerAnnum)"));
						form1.setRate(rs2.getDouble("sum(rate)"));
						form1.setSumInsINR(rs2.getInt("sum(SumInsINR)"));
						form1.setStampDuty(rs2.getInt("sum(stampDuty)"));
						form1.setNumber(rs2.getInt("sum(number)"));
						form1.setNoOfWorkers(rs2.getInt("sum(noOfWorkers)"));
						form1.setSalaryPM(rs2.getInt("sum(salaryPM)"));
						sumInsuredFormList.add(form1);
					}

					String brokrageStr = " select * from brokeragedetail where pcID='" + pcID + "';";
					ResultSet brokrageResult = dbOperation.executeSelect(brokrageStr);

					while (brokrageResult.next())
					{

						BrokerageDetailForm brokerageDetailForm2 = new BrokerageDetailForm();

						brokerageDetailForm2.setShareOfCompany(brokrageResult.getDouble("shareofCompany"));
						brokerageDetailForm2.setPercentage(brokrageResult.getDouble("percentage"));
						brokerageDetailForm2.setInsuranceCompanyName(brokrageResult.getString("insuranceCompanyName"));
						brokerageDetailForm2.setAmount(brokrageResult.getDouble("amount"));

						brokerageDetailFormList.add(brokerageDetailForm2);
					}

					String selectOtherDetailProc = "{call usp_policyDataShow(?)}";
					callableStatement = dbConnection.prepareCall(selectOtherDetailProc);
					callableStatement.setInt(1, pcID);
					ResultSet rs4 = callableStatement.executeQuery();
					while (rs4.next())
					{

						// brokerageDetailForm.setInsuranceCompanyName(rs4
						// .getString("insuranceCompanyName"));
						// brokerageDetailForm.setPercentage(rs4
						// .getDouble("percentage"));
						// brokerageDetailForm.setAmount(rs4.getDouble("amount"));

						hypothicationDetailForm.setNameOfBank(rs4.getString("NameOfBank"));
						hypothicationDetailForm.setBranch(rs4.getString("Branch"));
						hypothicationDetailForm.setCity(rs4.getString("city"));

						coInsuranceDetailForm.setCompanyName(rs4.getString("CompanyName"));
						coInsuranceDetailForm.setShareOfCompany(rs4.getDouble("shareOfCompany"));

						paymentDetailForm.setModeOfPayment(rs4.getString("modeOfPayment"));
						paymentDetailForm.setBankName(rs4.getString("bankName"));
						paymentDetailForm.setChequeOrDDAmount(rs4.getString("chequeOrDDAmount"));
						paymentDetailForm.setChequeOrDDDate(rs4.getString("chequeOrDDDate"));
						paymentDetailForm.setChequeOrDDNo(rs4.getString("chequeOrDDNo"));

						// brokerageDetailFormList.add(brokerageDetailForm);
						hypothicationDetailFormList.add(hypothicationDetailForm);
						insuranceDetailFormList.add(coInsuranceDetailForm);
						paymentDetailFormlist.add(paymentDetailForm);

					}
					clientDetailFormlist.add(form);
					policyDetailFormList.add(policyDetailForm);

				}

			}

			System.out.println(policyDetailFormList.size());
			System.out.println(clientDetailFormlist.size());
			System.out.println(sumInsuredFormList.size());
			System.out.println(paymentDetailFormlist.size());
			System.out.println(insuranceDetailFormList.size());
			System.out.println(hypothicationDetailFormList.size());
			policyDetailDomain.setBrokerageDetailFormList(brokerageDetailFormList);
			policyDetailDomain.setHypothicationDetailFormList(hypothicationDetailFormList);
			policyDetailDomain.setInsuranceDetailFormList(insuranceDetailFormList);
			policyDetailDomain.setPaymentDetailFormlist(paymentDetailFormlist);
			policyDetailDomain.setSumInsuredFormList(sumInsuredFormList);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);
			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public PolicyDetailDomain getReportByCustom(String insuredNameCustom, String relationManagerCustom, String insuredCompanyCustom, String PolicyStartDateCustom, String DateOfInwardCustom, String PolicyEndDateCustom)
	{

		PolicyDetailDomain policyDetailDomain = new PolicyDetailDomain();
		List<PolicyDetailForm> policyDetailFormList = null;
		List<SumInsuredForm> sumInsuredFormList = null;
		List<BrokerageDetailForm> brokerageDetailFormList = null;
		List<HypothicationDetailForm> hypothicationDetailFormList = null;
		List<CoInsuranceDetailForm> insuranceDetailFormList = null;
		List<PaymentDetailForm> paymentDetailFormlist = null;
		List<ClientDetailForm> clientDetailFormlist = null;

		DbOperation dbOperation = new DbOperation();
		int policyID = 0;
		int pcID = 0;
		try
		{
			dbConnection = DBConnection.getConnection();

			// String clientDetail =
			// "select * from client_detail,policy_detail where policy_detail.clientID=client_detail.clientID AND (policy_detail.insuranceCompanyName = '"
			// + InsuranceCompany + "');";
			//
			String clientDetail = "SELECT * FROM client_detail a ,policy_detail b WHERE  a.clientID=b.clientID";

			if (insuredNameCustom != "")
			{
				clientDetail = clientDetail + " AND a.insuredName='" + insuredNameCustom + "'";
			}

			if (relationManagerCustom != "")
			{
				clientDetail = clientDetail + " AND a.rmName='" + relationManagerCustom + "'";
			}

			if (insuredCompanyCustom != "")
			{
				clientDetail = clientDetail + " AND b.insuranceCompanyName='" + insuredCompanyCustom + "'";
			}
			if (PolicyStartDateCustom != "")
			{
				clientDetail = clientDetail + " AND b.riskStartDate='" + General.dateParse(PolicyStartDateCustom) + "'";
			}
			if (DateOfInwardCustom != "")
			{
				clientDetail = clientDetail + " AND b.dateOfInward='" + General.dateParse(DateOfInwardCustom) + "'";
			}
			if (PolicyEndDateCustom != "")
			{
				clientDetail = clientDetail + " AND b.riskEndDate='" + General.dateParse(PolicyEndDateCustom) + "'";
			}

			clientDetail = clientDetail + ";";

			ResultSet rscd = dbOperation.executeSelect(clientDetail);
			clientDetailFormlist = new ArrayList<ClientDetailForm>();
			policyDetailFormList = new ArrayList<PolicyDetailForm>();
			sumInsuredFormList = new ArrayList<SumInsuredForm>();
			brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();
			hypothicationDetailFormList = new ArrayList<HypothicationDetailForm>();
			insuranceDetailFormList = new ArrayList<CoInsuranceDetailForm>();
			paymentDetailFormlist = new ArrayList<PaymentDetailForm>();
			while (rscd.next())
			{
				BrokerageDetailForm brokerageDetailForm = new BrokerageDetailForm();
				HypothicationDetailForm hypothicationDetailForm = new HypothicationDetailForm();
				CoInsuranceDetailForm coInsuranceDetailForm = new CoInsuranceDetailForm();
				PaymentDetailForm paymentDetailForm = new PaymentDetailForm();
				SumInsuredForm form1 = new SumInsuredForm();
				ClientDetailForm form = new ClientDetailForm();
				PolicyDetailForm policyDetailForm = new PolicyDetailForm();

				form.setInsuredName(rscd.getString("insuredName"));
				form.setAddress(rscd.getString("address"));
				form.setContactPerson(rscd.getString("contactPerson"));
				form.setPincode(rscd.getString("pincode"));
				form.setOfficeNo(rscd.getString("officeNo"));
				form.setFaxNo(rscd.getString("faxNo"));
				form.setMobileNo(rscd.getString("mobileNo"));
				form.setRmName(rscd.getString("rmName"));
				form.setEmail(rscd.getString("emailId"));

				policyDetailForm.setClientID(rscd.getInt("clientID"));
				policyDetailForm.setPolicyName(rscd.getString("policyName"));
				policyDetailForm.setInsuranceCompany(rscd.getString("insuranceCompanyName"));
				policyDetailForm.setBranch(rscd.getString("branchOfCompany"));
				policyDetailForm.setReferencePerson(rscd.getString("referPerson"));
				policyDetailForm.setDateOfInward(rscd.getString("dateOfInward"));
				policyDetailForm.setRiskStartDate(rscd.getString("riskStartDate"));
				policyDetailForm.setRiskEndDate(rscd.getString("riskEndDate"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));
				policyDetailForm.setRiskAddress(rscd.getString("riskAddress"));
				policyDetailForm.setRiskPincode(rscd.getString("riskPincode"));
				policyDetailForm.setExpirypolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setPolicyNo(rscd.getString("expiryPolicyNo"));
				policyDetailForm.setCity(rscd.getString("city"));
				policyDetailForm.setState(rscd.getString("state"));
				policyDetailForm.setCountry(rscd.getString("country"));
				policyDetailForm.setRiskLocation(rscd.getString("riskLocation"));

				/* get policy id */
				String str = " select * from policy_master where policyName='" + rscd.getString("policyName") + "';";
				ResultSet rs = dbOperation.executeSelect(str);
				while (rs.next())
				{
					policyID = rs.getInt(1);
					String str1 = " select * from policyclient where policyID='" + policyID + "'AND clientID='" + rscd.getInt("clientID") + "' ;";
					ResultSet rs1 = dbOperation.executeSelect(str1);

					while (rs1.next())
					{
						pcID = rs1.getInt(1);
					}

					String str2 = " select sum(SumInsINR) ,sum(policyRate),sum(totalPremiumPaid),sum(serviceTax),sum(stampDuty),sum(tpPremium),sum(discount),sum(premiumBeforeTerroAndTax),sum(terrorismPremium),sum(premiumNetOfServiceTax),sum(number),sum(premiumPayable),sum(ownDamagePremium),sum(brokerage),sum(premiumEligibleForBrokerage),sum(brokerageAmount),sum(noOfWorkers),sum(totalSumInsuredPerAnnum),sum(rate),sum(salaryPM) from  sum_insured_detail where pcID='" + pcID + "';";
					ResultSet rs2 = dbOperation.executeSelect(str2);

					while (rs2.next())
					{

						// form1.setParticulars(rs2.getString("particulars"));
						// form1.setDateOfBirth(rs2.getString("dateOfBirth"));
						// form1.setRenewalDate(rs2.getString("renewalDate"));
						form1.setPolicyRate(rs2.getDouble("sum(policyRate)"));
						form1.setServiceTax(rs2.getDouble("sum(serviceTax)"));
						form1.setDiscount(rs2.getDouble("sum(discount)"));
						form1.setPremiumBeforeTerroAndTax(rs2.getDouble("sum(premiumBeforeTerroAndTax)"));
						form1.setTerrorismPremium(rs2.getDouble("sum(terrorismPremium)"));
						form1.setPremiumNetOfServiceTax(rs2.getDouble("sum(premiumNetOfServiceTax)"));
						form1.setPremiumPayable(rs2.getDouble("sum(premiumPayable)"));
						form1.setOwnDamagePremium(rs2.getDouble("sum(ownDamagePremium)"));
						form1.setBrokerage(rs2.getDouble("sum(brokerage)"));
						form1.setPremiumEligibleForBrokerage(rs2.getDouble("sum(premiumEligibleForBrokerage)"));
						form1.setBrokerageAmount(rs2.getDouble("sum(brokerageAmount)"));
						form1.setTotalSumInsuredPerAnnum(rs2.getDouble("sum(totalSumInsuredPerAnnum)"));
						form1.setRate(rs2.getDouble("sum(rate)"));
						form1.setSumInsINR(rs2.getInt("sum(SumInsINR)"));
						form1.setStampDuty(rs2.getInt("sum(stampDuty)"));
						form1.setNumber(rs2.getInt("sum(number)"));
						form1.setNoOfWorkers(rs2.getInt("sum(noOfWorkers)"));
						form1.setSalaryPM(rs2.getInt("sum(salaryPM)"));
						sumInsuredFormList.add(form1);
					}

					String brokrageStr = " select * from brokeragedetail where pcID='" + pcID + "';";
					ResultSet brokrageResult = dbOperation.executeSelect(brokrageStr);

					while (brokrageResult.next())
					{

						BrokerageDetailForm brokerageDetailForm2 = new BrokerageDetailForm();

						brokerageDetailForm2.setShareOfCompany(brokrageResult.getDouble("shareofCompany"));
						brokerageDetailForm2.setPercentage(brokrageResult.getDouble("percentage"));
						brokerageDetailForm2.setInsuranceCompanyName(brokrageResult.getString("insuranceCompanyName"));
						brokerageDetailForm2.setAmount(brokrageResult.getDouble("amount"));

						brokerageDetailFormList.add(brokerageDetailForm2);
					}

					String selectOtherDetailProc = "{call usp_policyDataShow(?)}";
					callableStatement = dbConnection.prepareCall(selectOtherDetailProc);
					callableStatement.setInt(1, pcID);
					ResultSet rs4 = callableStatement.executeQuery();
					while (rs4.next())
					{

						// brokerageDetailForm.setInsuranceCompanyName(rs4
						// .getString("insuranceCompanyName"));
						// brokerageDetailForm.setPercentage(rs4
						// .getDouble("percentage"));
						// brokerageDetailForm.setAmount(rs4.getDouble("amount"));

						hypothicationDetailForm.setNameOfBank(rs4.getString("NameOfBank"));
						hypothicationDetailForm.setBranch(rs4.getString("Branch"));
						hypothicationDetailForm.setCity(rs4.getString("city"));

						coInsuranceDetailForm.setCompanyName(rs4.getString("CompanyName"));
						coInsuranceDetailForm.setShareOfCompany(rs4.getDouble("shareOfCompany"));

						paymentDetailForm.setModeOfPayment(rs4.getString("modeOfPayment"));
						paymentDetailForm.setBankName(rs4.getString("bankName"));
						paymentDetailForm.setChequeOrDDAmount(rs4.getString("chequeOrDDAmount"));
						paymentDetailForm.setChequeOrDDDate(rs4.getString("chequeOrDDDate"));
						paymentDetailForm.setChequeOrDDNo(rs4.getString("chequeOrDDNo"));

						// brokerageDetailFormList.add(brokerageDetailForm);
						hypothicationDetailFormList.add(hypothicationDetailForm);
						insuranceDetailFormList.add(coInsuranceDetailForm);
						paymentDetailFormlist.add(paymentDetailForm);

					}
					clientDetailFormlist.add(form);
					policyDetailFormList.add(policyDetailForm);

				}

			}

			System.out.println(policyDetailFormList.size());
			System.out.println(clientDetailFormlist.size());
			System.out.println(sumInsuredFormList.size());
			System.out.println(paymentDetailFormlist.size());
			System.out.println(insuranceDetailFormList.size());
			System.out.println(hypothicationDetailFormList.size());
			policyDetailDomain.setBrokerageDetailFormList(brokerageDetailFormList);
			policyDetailDomain.setHypothicationDetailFormList(hypothicationDetailFormList);
			policyDetailDomain.setInsuranceDetailFormList(insuranceDetailFormList);
			policyDetailDomain.setPaymentDetailFormlist(paymentDetailFormlist);
			policyDetailDomain.setSumInsuredFormList(sumInsuredFormList);
			policyDetailDomain.setPolicyDetailFormlist(policyDetailFormList);
			policyDetailDomain.setClientDetailFormlist(clientDetailFormlist);
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return policyDetailDomain;
	}

	public List<String> getSumInsuredParam(String policyName) throws SQLException
	{
		List<String> SumPara = new ArrayList<String>();
		DbOperation dbOperation = new DbOperation();

		String str = " select * from suminsurerelation where policyName='" + policyName + "';";
		ResultSet rs = dbOperation.executeSelect(str);
		String param = null;

		while (rs.next())
		{
			param = rs.getString("parameter");
		}

		String[] result = param.split(":");

		for (String s1 : result)
		{

			String str1 = " select * from suminsureparamaster where paramID='" + s1 + "';";
			ResultSet rs1 = dbOperation.executeSelect(str1);

			while (rs1.next())
			{
				SumPara.add(rs1.getString("paramName"));
			}

		}

		return SumPara;
	}

}
