package com.mis.reports;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.mis.formBean.BrokerageDetailForm;
import com.mis.formBean.ClientDetailForm;
import com.mis.formBean.CoInsuranceDetailForm;
import com.mis.formBean.HypothicationDetailForm;
import com.mis.formBean.PaymentDetailForm;
import com.mis.formBean.PolicyDetailForm;
import com.mis.formBean.SumInsuredForm;

public class Reports
{

	public String generateExcel(List<PolicyDetailForm> list, List<ClientDetailForm> clientDetailForms, List<BrokerageDetailForm> brokerageDetailForms, List<HypothicationDetailForm> hypothicationDetailForms, List<CoInsuranceDetailForm> coInsuranceDetailForms, List<PaymentDetailForm> paymentDetailForms, List<SumInsuredForm> sumInsuredForms)

	{
		String path = "";

		String[] titles = { "Sr No",
				"Name of the Unit",
				"IMD Name",
				"Insurance Company", 
				"Branch",
				"Type of Policy", 
				"Share", 
				"Sum Insured In lakh", 
				"Premium W/O S.T", 
				"Terrorisom", 
				"ERF", 
				"Discount", 
				"OD Premium", 
				"TP", 
				"Total", 
				"ST", 
				"Total Premium", 
				"Type of Policy", 
				"ST", 
				"Brokerage %", 
				"Brokerage Amount", 
				"Brokerage %", 
				"BROKERAGE AMT RECEIVED", 
				"Difference of Brokerage If any", 
				"RM  Name", 
				"Ref Name", 
				"Month", 
				"Incp Date", 
				"Exp Date", 
				"Policy No", 
				"Endo", 
				"Installment", 
				"Make", 
				"Model", 
				"Reg No", 
				"Eng No", 
				"Chs No", 
				"Brokerage Cheque No", 
				"Brokerage Cheque Amt", 
				"Cheque Date", 
				"Cheque pay no", 
				"Bank", 
				"Saiba No", 
				"Premium Cheque No", 
				"Premium Cheque Amt", 
				"Premium Cheque Bank Name", 
				"Bank Gar", 
				"Cheque Date", 
				"CD A/C No", 
				"Remarks"
				};

			int c = 1;
			System.out.println("in report generation block start");
		// Blank workbook
			XSSFWorkbook workbook = new XSSFWorkbook();

		Map<String, CellStyle> styles = createStyles(workbook);
		// Create a blank sheet
		XSSFSheet sheet = workbook.createSheet("Employee Data");
		// This data needs to be written (Object[])
		Map<String, Object[]> data = new TreeMap<String, Object[]>();
		// data.put("-1", new Object[] {"ID",
		// "NAMEdddddddddddddddddddddddddddddddd", "LASTNAME"});
		//System.out.println("size of list==" + list.size());
		
		
		int a = brokerageDetailForms.size()>0?1:2;
		
		for (int i = 0; i < list.size(); i++)
		{

			data.put("" + i, new Object[] { 
					c++, 
					clientDetailForms.get(i).getInsuredName(), 
					"", 
					list.size() > 0 ? list.get(i).getInsuranceCompany():"N/A", 
					list.size() > 0 ? list.get(i).getBranch():"N/A", 
					list.size() > 0 ? list.get(i).getPolicyName():"N/A", 
					coInsuranceDetailForms.size() > 0 ? coInsuranceDetailForms.get(i).getShareOfCompany():"N/A", 
					sumInsuredForms.size() > 0 ? sumInsuredForms.get(i).getSumInsINR():"N/A", 
					sumInsuredForms.size() > 0 ? sumInsuredForms.get(i).getTpPremium():"N/A", 
					sumInsuredForms.size() > 0 ? sumInsuredForms.get(i).getTerrorismPremium():"N/A", 
					"", 
					sumInsuredForms.size() > 0 ? sumInsuredForms.get(i).getDiscount():"N/A",
					"",
					sumInsuredForms.size() > 0 ? sumInsuredForms.get(i).getTotalPremiumePaid():"N/A",
					sumInsuredForms.size() > 0 ? sumInsuredForms.get(i).getTotalPremiumePaid():"N/A",
					sumInsuredForms.size() > 0 ? sumInsuredForms.get(i).getServiceTax():"N/A",
					"Total Premium",
					list.size() > 0 ? list.get(i).getPolicyName():"N/A",
					sumInsuredForms.size() > 0 ? sumInsuredForms.get(i).getServiceTax():"N/A",
					brokerageDetailForms.size()>0?brokerageDetailForms.get(i).getPercentage():"N/A",
					brokerageDetailForms.size()>0?brokerageDetailForms.get(i).getAmount():"N/A",
					brokerageDetailForms.size()>0?brokerageDetailForms.get(i).getPercentage():"N/A",
					"Amount recieved",
					"difference",
					clientDetailForms.size()> 0 ? clientDetailForms.get(i).getRmName():"N/A",
					list.get(i).getReferencePerson(),
					list.get(i).getReferencePerson(), 
					list.get(i).getPolicyNo(),
					list.get(i).getDateOfInward(),
					
					});
		}

		/*
		 * data.put("2", new Object[] {1, 1.05, "Shukla"}); data.put("3", new
		 * Object[] {2, 1, "Gupta"}); data.put("4", new Object[] {3, "John",
		 * "Adwards"}); data.put("5", new Object[] {4, "Brian", "Schultz"});
		 */
		// Iterate over data and write to sheet
		Set<String> keyset = data.keySet();
		int rownum = 0;

		Row headerRow = sheet.createRow(0);
		headerRow.setHeightInPoints(72.5f);

		for (int i = 0; i < titles.length; i++)
		{
			Cell cell = headerRow.createCell(i);
			cell.setCellValue(titles[i]);
			//	cell.setCellStyle(styles.get("header"));
			cell.setCellStyle(styles.get("cell_bg"));

		}
		rownum = 1;
		for (String key : keyset)
		{
			Row row = sheet.createRow(rownum++);
			Object[] objArr = data.get(key);
			int cellnum = 0;
			for (Object obj : objArr)
			{
				Cell cell = row.createCell(cellnum++);

				if (obj instanceof String)
					cell.setCellValue((String) obj);
				else if (obj instanceof Integer)
					cell.setCellValue((Integer) obj);
				else if (obj instanceof Double)
					cell.setCellValue((Double) obj);
			}

		}
		for (int i = 0; i < titles.length; i++)
		{
			sheet.autoSizeColumn((short) i);
		}

		try
		{

			String fileName = "test.xlsx";
			path = "D:\\test.xlsx";

			// Write the workbook in file system
			FileOutputStream out = new FileOutputStream(new File("D:\\test.xlsx"));
			workbook.write(out);
			out.close();
			System.out.println("howtodoinjava_demo.xlsx written successfully on disk.");
			System.out.println("in report generation block end");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return path;

	}

	public static void getSavedUploadedFile(String path, HttpServletResponse response, String userFileName)
	{
		PrintWriter printWriter;
		File file;
		try
		{
			printWriter = response.getWriter();
			file = new File(path);
			if (file.exists())
			{
				response.setContentType("application/x-download");
				response.setHeader("Content-Disposition", "attachment; filename=" + userFileName);

				FileInputStream is = new FileInputStream(file);
				int oneChar = 0;
				while ((oneChar = is.read()) != -1)
				{
					printWriter.write(oneChar);
				}
				printWriter.flush();
				printWriter.close();
				is.close();
			}
			else
			{
				// error file not found
				throw new Exception("file not found at " + path);
			}
		}
		catch (FileNotFoundException fnf)
		{
			fnf.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	private static Map<String, CellStyle> createStyles(Workbook wb)
	{
		Map<String, CellStyle> styles = new HashMap<String, CellStyle>();
		DataFormat df = wb.createDataFormat();

		CellStyle style;
		Font headerFont = wb.createFont();
		headerFont.setBoldweight(Font.BOLDWEIGHT_BOLD);
		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_CENTER);
		style.setFillForegroundColor(IndexedColors.LIGHT_CORNFLOWER_BLUE.getIndex());
		style.setFillPattern(CellStyle.SOLID_FOREGROUND);
		style.setFont(headerFont);

		styles.put("header", style);

		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_CENTER);
		style.setFillForegroundColor(IndexedColors.LIGHT_CORNFLOWER_BLUE.getIndex());
		style.setFillPattern(CellStyle.SOLID_FOREGROUND);
		style.setFont(headerFont);
		style.setDataFormat(df.getFormat("d-mmm"));
		styles.put("header_date", style);

		Font font1 = wb.createFont();
		font1.setBoldweight(Font.BOLDWEIGHT_BOLD);
		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_LEFT);
		style.setFont(font1);
		styles.put("cell_b", style);

		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_CENTER);
		style.setFont(font1);
		styles.put("cell_b_centered", style);

		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_RIGHT);
		style.setFont(font1);
		style.setDataFormat(df.getFormat("d-mmm"));
		styles.put("cell_b_date", style);

		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_RIGHT);
		style.setFont(font1);
		style.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		style.setFillPattern(CellStyle.SOLID_FOREGROUND);
		style.setDataFormat(df.getFormat("d-mmm"));
		styles.put("cell_g", style);

		Font font2 = wb.createFont();
		font2.setColor(IndexedColors.BLUE.getIndex());
		font2.setBoldweight(Font.BOLDWEIGHT_BOLD);
		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_LEFT);
		style.setFont(font2);
		styles.put("cell_bb", style);

		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_CENTER);
		style.setFont(font1);
		style.setFillForegroundColor(IndexedColors.LIGHT_CORNFLOWER_BLUE.getIndex());
		style.setFillPattern(CellStyle.SOLID_FOREGROUND);
		style.setDataFormat(df.getFormat("d-mmm"));
		styles.put("cell_bg", style);

		Font font3 = wb.createFont();
		font3.setFontHeightInPoints((short) 14);
		font3.setColor(IndexedColors.DARK_BLUE.getIndex());
		font3.setBoldweight(Font.BOLDWEIGHT_BOLD);
		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_LEFT);
		style.setFont(font3);
		style.setWrapText(true);
		styles.put("cell_h", style);

		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_LEFT);
		style.setWrapText(true);
		styles.put("cell_normal", style);

		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_CENTER);
		style.setWrapText(true);
		styles.put("cell_normal_centered", style);

		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_RIGHT);
		style.setWrapText(true);
		style.setDataFormat(df.getFormat("d-mmm"));
		styles.put("cell_normal_date", style);

		style = createBorderedStyle(wb);
		style.setAlignment(CellStyle.ALIGN_LEFT);
		style.setIndention((short) 1);
		style.setWrapText(true);
		styles.put("cell_indented", style);

		style = createBorderedStyle(wb);
		style.setFillForegroundColor(IndexedColors.BLUE.getIndex());
		style.setFillPattern(CellStyle.SOLID_FOREGROUND);
		styles.put("cell_blue", style);

		return styles;
	}

	private static CellStyle createBorderedStyle(Workbook wb)
	{
		CellStyle style = wb.createCellStyle();
		style.setBorderRight(CellStyle.BORDER_THIN);
		style.setRightBorderColor(IndexedColors.BLACK.getIndex());
		style.setBorderBottom(CellStyle.BORDER_THIN);
		style.setBottomBorderColor(IndexedColors.BLACK.getIndex());
		style.setBorderLeft(CellStyle.BORDER_THIN);
		style.setLeftBorderColor(IndexedColors.BLACK.getIndex());
		style.setBorderTop(CellStyle.BORDER_THIN);
		style.setTopBorderColor(IndexedColors.BLACK.getIndex());
		return style;
	}
}
