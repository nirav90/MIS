package com.mis.domain;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class General
{

	public static String dateToStringConvert(Date date)
	{
		
		// Create an instance of SimpleDateFormat used for formatting 
		// the string representation of date (month/day/year)
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		String reportDate = df.format(date);

		// Print what date is today!
		System.out.println("converted  Date: " + reportDate);
		return reportDate;
	}
	
	
	
	
	public static String dateParse(String Date)
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
