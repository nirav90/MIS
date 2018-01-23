package com.mis.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class Calculation extends ActionSupport
{

	public String getPremium() throws IOException
	{

		try
		{
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpServletResponse response = ServletActionContext.getResponse();
			double sumInsINR = Double.parseDouble(request.getParameter("sumInsINR"));
			double discount = Double.parseDouble(request.getParameter("discount"));

			int i = Integer.parseInt(request.getParameter("i"));
			PrintWriter out = response.getWriter();
			System.out.println(sumInsINR);
			System.out.println(discount);
			double preMiumeB = ((sumInsINR * discount) / 100);
			/*		out.write((int) preMiumeB);*/

			request.setAttribute("s", preMiumeB);
			request.setAttribute("i", i);
			System.out.println("dddddddddddddddddddddddddddddddddddd" + preMiumeB);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "true";
	}

	public String getTotalPremiumNetOfServiceTax() throws IOException
	{

		try
		{
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpServletResponse response = ServletActionContext.getResponse();
			double ownDamagePremium = Double.parseDouble(request.getParameter("ownDamagePremium"));
			double tpPremium = Double.parseDouble(request.getParameter("tpPremium"));

			int i = Integer.parseInt(request.getParameter("i"));
			PrintWriter out = response.getWriter();
			System.out.println(ownDamagePremium);
			System.out.println(tpPremium);
			double premiumNetOfServiceTax = ownDamagePremium + tpPremium;
			double serviceTax = (((ownDamagePremium + tpPremium) * 12.37) / 100);
			double totalPremium = premiumNetOfServiceTax + serviceTax;
			/*		out.write((int) preMiumeB);*/

			request.setAttribute("premiumNetOfServiceTax", premiumNetOfServiceTax);
			request.setAttribute("serviceTax", serviceTax);
			request.setAttribute("totalPremium", totalPremium);
			request.setAttribute("i", i);
			/*System.out.println("dddddddddddddddddddddddddddddddddddd"+preMiumeB);
			System.out.println("dddddddddddddddddddddddddddddddddddd"+preMiumeB1);
			System.out.println("dddddddddddddddddddddddddddddddddddd"+totalPremium);*/
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "true";
	}

	public String getTotalPremiumNetOfServiceTax2() throws IOException
	{

		try
		{
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpServletResponse response = ServletActionContext.getResponse();
			double premiumBeforeTerroAndTax = Double.parseDouble(request.getParameter("premiumBeforeTerroAndTax"));
			double terrorismPremium = Double.parseDouble(request.getParameter("terrorismPremium"));

			int i = Integer.parseInt(request.getParameter("i"));
			PrintWriter out = response.getWriter();
			System.out.println(premiumBeforeTerroAndTax);
			System.out.println(terrorismPremium);
			double premiumNetOfServiceTax = premiumBeforeTerroAndTax + terrorismPremium;
			double serviceTax = (((premiumBeforeTerroAndTax + terrorismPremium) * 12.37) / 100);
			double totalPremium = premiumNetOfServiceTax + serviceTax;
			/*		out.write((int) preMiumeB);*/

			request.setAttribute("premiumNetOfServiceTax", premiumNetOfServiceTax);
			request.setAttribute("serviceTax", serviceTax);
			request.setAttribute("totalPremium", totalPremium);
			request.setAttribute("i", i);
			/*System.out.println("dddddddddddddddddddddddddddddddddddd"+preMiumeB);
			System.out.println("dddddddddddddddddddddddddddddddddddd"+preMiumeB1);
			System.out.println("dddddddddddddddddddddddddddddddddddd"+totalPremium);*/
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "true";
	}

	public String getTotalPremiumNetOfServiceTax3() throws IOException
	{

		try
		{
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpServletResponse response = ServletActionContext.getResponse();
			double sumInsINR = Double.parseDouble(request.getParameter("sumInsINR"));
			double policyRate = Double.parseDouble(request.getParameter("policyRate"));

			int i = Integer.parseInt(request.getParameter("i"));
			PrintWriter out = response.getWriter();
			System.out.println(sumInsINR);
			System.out.println(policyRate);
			double premiumNetOfServiceTax = (sumInsINR * policyRate) / 100;
			double serviceTax = ((premiumNetOfServiceTax * 12.37) / 100);

			/*		out.write((int) preMiumeB);*/

			request.setAttribute("premiumNetOfServiceTax", premiumNetOfServiceTax);
			request.setAttribute("serviceTax", serviceTax);
			request.setAttribute("i", i);

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "true";
	}

	public String getTotalPremiumNetOfServiceTax4() throws IOException
	{

		try
		{
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpServletResponse response = ServletActionContext.getResponse();
			double sumInsINR = Double.parseDouble(request.getParameter("sumInsINR"));
			double policyRate = Double.parseDouble(request.getParameter("policyRate"));

			int i = Integer.parseInt(request.getParameter("i"));
			PrintWriter out = response.getWriter();
			System.out.println(sumInsINR);
			System.out.println(policyRate);
			double premiumNetOfServiceTax = (sumInsINR * policyRate) / 100;
			double serviceTax = ((premiumNetOfServiceTax * 12.37) / 100);

			/*		out.write((int) preMiumeB);*/

			request.setAttribute("premiumNetOfServiceTax", premiumNetOfServiceTax);
			request.setAttribute("serviceTax", serviceTax);
			request.setAttribute("i", i);

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "true";
	}

	public String getTotalStampDuty() throws IOException
	{

		try
		{
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpServletResponse response = ServletActionContext.getResponse();
			double premiumNetOfServiceTax = Double.parseDouble(request.getParameter("premiumNetOfServiceTax"));
			double serviceTax = Double.parseDouble(request.getParameter("serviceTax"));
			double stampDuty = Double.parseDouble(request.getParameter("stampDuty"));

			int i = Integer.parseInt(request.getParameter("i"));
			PrintWriter out = response.getWriter();
			System.out.println(premiumNetOfServiceTax);
			System.out.println(serviceTax);
			System.out.println(stampDuty);

			double totalPremium = premiumNetOfServiceTax + serviceTax + stampDuty;

			/*		out.write((int) preMiumeB);*/

			request.setAttribute("totalPremium", totalPremium);
			request.setAttribute("i", i);

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "true";
	}

	public String getPremium2() throws IOException
	{

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		double premiumNetOfServiceTax = Double.parseDouble(request.getParameter("premiumNetOfServiceTax"));
		int i = Integer.parseInt(request.getParameter("i"));
		PrintWriter out = response.getWriter();
		double preMiumeB = ((premiumNetOfServiceTax * 12) / 100);
		/*		out.write((int) preMiumeB);*/

		request.setAttribute("s", preMiumeB);
		request.setAttribute("i", i);
		request.setAttribute("c", "12");
		System.out.println("bbbbbbbbbbbbbbbbb" + preMiumeB);
		return "true";
	}

}
