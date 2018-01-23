package com.mis.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.mis.dao.NewPolicyAddDao;
import com.mis.formBean.BrokerageDetailForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.CoInsuranceDetailForm;
import com.mis.formBean.HypothicationDetailForm;
import com.mis.formBean.PaymentDetailForm;
import com.mis.formBean.PolicyDetailForm;
import com.mis.formBean.SumInsuredForm;
import com.opensymphony.xwork2.ActionSupport;

public class NewPolicyAddAction extends ActionSupport
{

	ClientDetailForm	    clientDetailForm;
	PolicyDetailForm	    policyDetailForm;
	SumInsuredForm	        sumInsuredForm;
	BrokerageDetailForm	    brokerageDetailForm;
	HypothicationDetailForm	hypothicationDetailForm;
	CoInsuranceDetailForm	coInsuranceDetailForm;
	PaymentDetailForm	    paymentDetailForm;

	public String execute()
	{

		NewPolicyAddDao dao = new NewPolicyAddDao();
		List<SumInsuredForm> list = new ArrayList<SumInsuredForm>();
		List<BrokerageDetailForm> brokerageDetailFormList = new ArrayList<BrokerageDetailForm>();

		String flag = "true";
		HttpServletRequest request = ServletActionContext.getRequest();

		int count = Integer.parseInt(request.getParameter("counter"));

		String auto = request.getParameter("insuredName");
		String policyName = request.getParameter("policyName").trim();
		
		System.out.println("Policy Name::::"+policyName);

		System.out.println("counter ===============" + count);
		
		count = dao.getRowNumberOfPolicy(policyName);
		
		System.out.println("counter after database call:::"+count);

		/* sum insured array */

		double policyRate[] = new double[count];
		int sumInsINR[] = new int[count];
		int StampDuty[] = new int[count];
		double discount[] = new double[count];
		double premiumBeforeTerroAndTax[] = new double[count];
		double terrorismPremium[] = new double[count];
		double premiumNetOfServiceTax[] = new double[count];
		int number[] = new int[count];
		double premiumPayable[] = new double[count];
		String dateOfBirth[] = new String[count];
		double ownDamagePremium[] = new double[count];
		double tpPremium[] = new double[count];
		double premiumEligibleForBrokerage[] = new double[count];
		double brokerage[] = new double[count];
		double brokerageAmount[] = new double[count];
		String renewalDate[] = new String[count];
		int noOfWorkers[] = new int[count];
		int salaryPM[] = new int[count];
		double totalSumInsuredPerAnnum[] = new double[count];
		double rate[] = new double[count];
		double totalPremiumePaid[] = new double[count];
		String particulars[] = new String[count];
		double serviceTax[] = new double[count];

		/* brockrage Array */

		String insuranceCompanyName[] = new String[count];
		double shareOfCompany[] = new double[count];
		double percentage[] = new double[count];
		double amount[] = new double[count];

		try
		{
			if (request.getParameterValues("policyRate") == null)
			{

			}
			else
			{

				policyRate = doubleArray(request.getParameterValues("policyRate"));
			}

			if (request.getParameterValues("premiumPayable") == null)
			{

			}
			else
			{
				premiumPayable = doubleArray(request.getParameterValues("premiumPayable"));
			}

			if (request.getParameterValues("dateOfBirth") == null)
			{

			}
			else
			{
				dateOfBirth = request.getParameterValues("dateOfBirth");
			}

			if (request.getParameterValues("ownDamagePremium") == null)
			{

			}
			else
			{
				ownDamagePremium = doubleArray(request.getParameterValues("ownDamagePremium"));
			}

			if (request.getParameterValues("tpPremium") == null)
			{

			}
			else
			{
				tpPremium = doubleArray(request.getParameterValues("tpPremium"));
			}

			if (request.getParameterValues("premiumEligibleForBrokerage") == null)
			{

			}
			else
			{
				premiumEligibleForBrokerage = doubleArray(request.getParameterValues("premiumEligibleForBrokerage"));
			}

			if (request.getParameterValues("brokerage") == null)
			{

			}
			else
			{
				brokerage = doubleArray(request.getParameterValues("brokerage"));
			}

			if (request.getParameterValues("brokerageAmount") == null)
			{

			}
			else
			{
				brokerageAmount = doubleArray(request.getParameterValues("brokerageAmount"));
			}

			if (request.getParameterValues("renewalDate") == null)
			{

			}
			else
			{
				renewalDate = request.getParameterValues("renewalDate");
			}

			if (request.getParameterValues("noOfWorkers") == null)
			{

			}
			else
			{
				noOfWorkers = intArray(request.getParameterValues("noOfWorkers"));
			}

			if (request.getParameterValues("salaryPM") == null)
			{

			}
			else
			{
				salaryPM = intArray(request.getParameterValues("salaryPM"));
			}

			if (request.getParameterValues("totalSumInsuredPerAnnum") == null)
			{

			}
			else
			{
				totalSumInsuredPerAnnum = doubleArray(request.getParameterValues("totalSumInsuredPerAnnum"));
			}

			if (request.getParameterValues("rate") == null)
			{

			}
			else
			{
				rate = doubleArray(request.getParameterValues("rate"));
			}

			if (request.getParameterValues("totalPremiumPaid") == null)
			{

			}
			else
			{
				totalPremiumePaid = doubleArray(request.getParameterValues("totalPremiumPaid"));
			}

			/*
			 * if (request.getParameterValues("totalPremiumePaid")== null) {
			 * 
			 * } else { particulars =
			 * request.getParameterValues("totalPremiumePaid"); }
			 */
			if (request.getParameterValues("serviceTax") == null)
			{

			}
			else
			{

				serviceTax = doubleArray(request.getParameterValues("serviceTax"));
			}

			if (request.getParameterValues("number") == null)
			{

			}
			else
			{
				number = intArray(request.getParameterValues("number"));
			}

			if (request.getParameterValues("premiumNetOfServiceTax") == null)
			{

			}
			else
			{
				premiumNetOfServiceTax = doubleArray(request.getParameterValues("premiumNetOfServiceTax"));
			}

			if (request.getParameterValues("terrorismPremium") == null)
			{

			}
			else
			{
				terrorismPremium = doubleArray(request.getParameterValues("terrorismPremium"));
			}

			if (request.getParameterValues("premiumBeforeTerroAndTax") == null)
			{

			}
			else
			{
				premiumBeforeTerroAndTax = doubleArray(request.getParameterValues("premiumBeforeTerroAndTax"));
			}

			if (request.getParameterValues("discount") == null)
			{

			}
			else
			{
				discount = doubleArray(request.getParameterValues("discount"));
			}

			if (request.getParameterValues("stampDuty") == null)
			{

			}
			else
			{
				StampDuty = intArray(request.getParameterValues("stampDuty"));
			}

			if (request.getParameterValues("sumInsINR") == null)
			{

			}
			else
			{

				sumInsINR = intArray(request.getParameterValues("sumInsINR"));
			}

			// double policyRate[] = request.getParameterValues("policyRate");

			/* policy detail set value */

			policyDetailForm.setPolicyName(policyName);
			policyDetailForm.setRiskStartDate(dateParse(policyDetailForm.getRiskStartDate()));
			policyDetailForm.setRiskEndDate(dateParse(policyDetailForm.getRiskEndDate()));
			policyDetailForm.setDateOfInward(dateParse(policyDetailForm.getDateOfInward()));

			// System.out.println("value of auto completer" + auto);
			clientDetailForm.setInsuredName(auto);

			for (int i = 0; i < count; i++)
			{

				
				sumInsuredForm = new SumInsuredForm();

				System.out.println("in for of sum insured");
				System.out.println("value========================" + sumInsINR[i]);
				sumInsuredForm.setBrokerage(brokerage[i]);
				sumInsuredForm.setBrokerageAmount(brokerageAmount[i]);
				sumInsuredForm.setDateOfBirth(dateOfBirth[i]);
				sumInsuredForm.setDiscount(discount[i]);
				sumInsuredForm.setNoOfWorkers(noOfWorkers[i]);
				sumInsuredForm.setNumber(number[i]);
				sumInsuredForm.setOwnDamagePremium(ownDamagePremium[i]);
				sumInsuredForm.setParticulars(particulars[i]);
				// sumInsuredForm.setTotalPremiumePaid(totalPremiumePaid)
				sumInsuredForm.setPolicyRate(policyRate[i]);
				sumInsuredForm.setPremiumBeforeTerroAndTax(premiumBeforeTerroAndTax[i]);
				sumInsuredForm.setPremiumEligibleForBrokerage(premiumEligibleForBrokerage[i]);
				sumInsuredForm.setPremiumNetOfServiceTax(premiumNetOfServiceTax[i]);
				sumInsuredForm.setPremiumPayable(premiumPayable[i]);
				sumInsuredForm.setRate(rate[i]);
				sumInsuredForm.setRenewalDate(renewalDate[i]);
				sumInsuredForm.setSalaryPM(salaryPM[i]);
				sumInsuredForm.setServiceTax(serviceTax[i]);
				sumInsuredForm.setSumInsINR(sumInsINR[i]);
				sumInsuredForm.setStampDuty(StampDuty[i]);
				sumInsuredForm.setTerrorismPremium(terrorismPremium[i]);
				sumInsuredForm.setTotalPremiumePaid(totalPremiumePaid[i]);
				sumInsuredForm.setTotalSumInsuredPerAnnum(totalSumInsuredPerAnnum[i]);
				sumInsuredForm.setTpPremium(tpPremium[i]);

				System.out.println("----------------------------------");
				list.add(sumInsuredForm);

			}

			/* brokrage detail strat */

			if (request.getParameterValues("insuranceCompanyName") == null)
			{

			}
			else
			{
				insuranceCompanyName = request.getParameterValues("insuranceCompanyName");
			}

			if (request.getParameterValues("shareOfCompany") == null)
			{

			}
			else
			{
				shareOfCompany = doubleArray(request.getParameterValues("shareOfCompany"));
			}

			if (request.getParameterValues("percentage") == null)
			{

			}
			else
			{
				percentage = doubleArray(request.getParameterValues("percentage"));
			}

			if (request.getParameterValues("amount") == null)
			{

			}
			else
			{
				amount = doubleArray(request.getParameterValues("amount"));
			}

			for (int i = 0; i < 5; i++)
			{

				System.out.println("Brakrage Value=====" + shareOfCompany[i]);

				brokerageDetailForm = new BrokerageDetailForm();
				System.out.println("in for of brokrage");

				brokerageDetailForm.setInsuranceCompanyName(insuranceCompanyName[i]);
				brokerageDetailForm.setShareOfCompany(shareOfCompany[i]);
				brokerageDetailForm.setAmount(amount[i]);
				brokerageDetailForm.setPercentage(percentage[i]);

				brokerageDetailFormList.add(brokerageDetailForm);

			}

			/* hypothication detail start */

			hypothicationDetailForm = new HypothicationDetailForm();

			hypothicationDetailForm.setNameOfBank(request.getParameter("NameOfBank"));
			hypothicationDetailForm.setCity(request.getParameter("city"));
			hypothicationDetailForm.setBranch(request.getParameter("Branch"));

			/* co_insureance detail */

			coInsuranceDetailForm = new CoInsuranceDetailForm();

			coInsuranceDetailForm.setCompanyName(request.getParameter("CompanyName"));
			coInsuranceDetailForm.setShareOfCompany(Double.parseDouble(request.getParameter("shareOfCompany")));

			/* payment detail */

			paymentDetailForm = new PaymentDetailForm();

			paymentDetailForm.setModeOfPayment(request.getParameter("modeOfPayment"));
			paymentDetailForm.setBankName(request.getParameter("bankName"));
			paymentDetailForm.setChequeOrDDNo(request.getParameter("chequeOrDDNo"));
			paymentDetailForm.setChequeOrDDAmount(request.getParameter("chequeOrDDAmount"));
			paymentDetailForm.setChequeOrDDDate(request.getParameter("chequeOrDDDate"));

			

			try
			{

				System.out.println("in action");
				System.out.println(policyDetailForm.getBranch());
				System.out.println("in action 2");
				int a = dao.insertPolicyDetail(clientDetailForm, policyDetailForm, list, brokerageDetailFormList, paymentDetailForm, coInsuranceDetailForm, hypothicationDetailForm);
				System.out.println("in action 3");

			}
			catch (Exception e)
			{

				e.printStackTrace();
			}
		}
		catch (Exception e)
		{

			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return flag;
	}

	public String updatePolicyDetail()
	{

		List<SumInsuredForm> list = new ArrayList<SumInsuredForm>();

		String flag = "true";
		HttpServletRequest request = ServletActionContext.getRequest();

		int id = (Integer) request.getAttribute("clientID");

		request.setAttribute("clientID", id);

		int count = Integer.parseInt(request.getParameter("counter"));

		String[] sumInsuerd = request.getParameterValues("sumInsuerd");
		String[] policyRate = request.getParameterValues("policyRate");
		String[] premiumeStax = request.getParameterValues("premiumeStax");
		String[] serviceTax = request.getParameterValues("serviceTax");
		String[] stampDuty = request.getParameterValues("stampDuty");
		String[] totalPremium = request.getParameterValues("totalPremium");

		String auto = request.getParameter("insuredName");
		String policyName = request.getParameter("policyName");

		policyDetailForm.setPolicyName(policyName);

		System.out.println("value of auto completer" + auto);
		clientDetailForm.setInsuredName(auto);

		for (int i = 0; i < count; i++)
		{

			// sumInsuerd = new SumInsuredForm();

			System.out.println("----------------------------------");
			list.add(sumInsuredForm);

		}

		/* brokrage detail strat */

		brokerageDetailForm = new BrokerageDetailForm();

		brokerageDetailForm.setInsuranceCompanyName(request.getParameter("insuranceCompanyName"));
		brokerageDetailForm.setPercentage(Double.parseDouble(request.getParameter("percentage")));
		brokerageDetailForm.setAmount(Double.parseDouble(request.getParameter("amount")));

		/* hypothication detail start */

		hypothicationDetailForm = new HypothicationDetailForm();

		hypothicationDetailForm.setNameOfBank(request.getParameter("NameOfBank"));
		hypothicationDetailForm.setCity(request.getParameter("city"));
		hypothicationDetailForm.setBranch(request.getParameter("Branch"));

		/* co_insureance detail */

		coInsuranceDetailForm = new CoInsuranceDetailForm();

		coInsuranceDetailForm.setCompanyName(request.getParameter("CompanyName"));
		coInsuranceDetailForm.setShareOfCompany(Double.parseDouble(request.getParameter("shareOfCompany")));

		/* payment detail */

		paymentDetailForm = new PaymentDetailForm();

		paymentDetailForm.setModeOfPayment(request.getParameter("modeOfPayment"));
		paymentDetailForm.setBankName(request.getParameter("bankName"));
		paymentDetailForm.setChequeOrDDNo(request.getParameter("chequeOrDDNo"));
		paymentDetailForm.setChequeOrDDAmount(request.getParameter("chequeOrDDAmount"));
		paymentDetailForm.setChequeOrDDDate(request.getParameter("chequeOrDDDate"));

		NewPolicyAddDao dao = new NewPolicyAddDao();

		try
		{

			System.out.println("in action");
			System.out.println(policyDetailForm.getBranch());
			System.out.println("in action 2");
			int a = dao.updatePolicyDetail(clientDetailForm, policyDetailForm, list, brokerageDetailForm, paymentDetailForm, coInsuranceDetailForm, hypothicationDetailForm);
			System.out.println("in action 3");

		}
		catch (Exception e)
		{

			e.printStackTrace();
		}

		return flag;
	}

	public ClientDetailForm getClientDetailForm()
	{
		return clientDetailForm;
	}

	public void setClientDetailForm(ClientDetailForm clientDetailForm)
	{
		this.clientDetailForm = clientDetailForm;
	}

	public PolicyDetailForm getPolicyDetailForm()
	{
		return policyDetailForm;
	}

	public void setPolicyDetailForm(PolicyDetailForm policyDetailForm)
	{
		this.policyDetailForm = policyDetailForm;
	}

	public SumInsuredForm getSumInsuredForm()
	{
		return sumInsuredForm;
	}

	public void setSumInsuredForm(SumInsuredForm sumInsuredForm)
	{
		this.sumInsuredForm = sumInsuredForm;
	}

	public double[] doubleArray(String[] sa)
	{

		double d[] = new double[20];
		List<Double> array = new ArrayList<Double>();
		try
		{

			for (int i = 0; i < sa.length; i++)
			{

				// System.out.println("value in for loop ::::::::::" + sa[i]);

				if (sa[i].equalsIgnoreCase(""))
				{

				}
				else
				{

					array.add(Double.parseDouble(sa[i]));
					// System.out.println("complate");
				}
			}

			// double[] d = (double)array.toArray();

			for (int i = 0; i < array.size(); i++)
			{
				d[i] = array.get(i);
//				System.out.println("value in latest algo==" + d[i]);
			}

		}
		catch (Exception e)
		{
			e.printStackTrace();
			return null;
		}
		return d;
	}

	public int[] intArray(String[] sa)
	{

		List<Integer> array = new ArrayList<Integer>();
		int[] d = new int[20];

		try
		{

			for (int i = 0; i < sa.length; i++)
			{
				// System.out.println("value in for loop int ::::::::::" +
				// sa[i]);

				if (sa[i].equalsIgnoreCase(""))
				{

				}
				else
				{

					array.add(Integer.parseInt(sa[i]));
				}
			}

			for (int i = 0; i < array.size(); i++)
			{
				d[i] = array.get(i);
//				System.out.println("value in latest algo of int==" + d[i]);
			}

		}
		catch (Exception e)
		{
			e.printStackTrace();
			return null;
		}

		return d;
	}

	public String dateParse(String Date)
	{

		String parseDate = "";

		try
		{
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			Date dd = sdf.parse(Date);

			sdf.applyPattern("yyyy-MM-dd");
			parseDate = sdf.format(dd);

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return parseDate;

	}

}
