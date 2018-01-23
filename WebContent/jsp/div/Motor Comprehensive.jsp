<%@ taglib uri="/struts-tags" prefix="s"  %>

<div id="Motor Comprehensive" class="t">
	<table width="100%">
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>

		<tr>

			<td>Details</td>
			<td>Discount (%)</td>
			<td>Own Damage Premium</td>
			<td>TP Premium</td>
			<td>Premium Net of Service Tax</td>
			<td>Service Tax</td>
			<td>Total Premium Paid</td>
			
		</tr>

		<tr>
			<td><b> Vahicle Make and Model </b></td>
			<td><s:textfield name="Details" id="Details" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="discount" id="discount" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="ownDamagePremium" id="ownDamagePremium" theme="simple" onblur="javascript:getTotalownDamagePremium(0);"/></td>
			<td rowspan="7"><s:textfield name="tpPremium" id="tpPremium" theme="simple" onchange="javascript:getTotalPremiumNetOfServiceTax(0);" onblur="javascript:getTotaltpPremium(0);"/></td>
			<td rowspan="7"><s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(0);javascript:getTotalserviceTax(0);javascript:getTotalPremiumPaid(0);"/></td>
			<td rowspan="7"><s:textfield name="serviceTax" id="serviceTax" theme="simple" /></td>
			<td rowspan="7"><s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple" /></td>
		</tr>

		<tr>
			<td><b> Insured Declared Value </b></td>
			<td><s:textfield name="Details" id="Details" theme="simple"/></td>
		</tr>

		<tr>
			<td><b> Year of Manufacturing </b></td>
			<td><s:textfield name="Details" id="Details" theme="simple"/></td>
		</tr>

		<tr>
			<td><b> Type of Vehicle </b></td>
			<td><s:textfield name="Details" id="Details" theme="simple"/></td>
		</tr>

		<tr>
			<td><b> Registration No </b></td>
			<td><s:textfield name="Details" id="Details" theme="simple"/></td>
		</tr>

		<tr>
			<td><b> Eng No </b></td>
			<td><s:textfield name="Details" id="Details" theme="simple"/></td>
		</tr>

		<tr>
			<td><b> Chessis No </b></td>
			<td><s:textfield name="Details" id="Details" theme="simple"/></td>
		</tr>

		<tr>
			<td><b>Total</b></td>
			<td></td>
			<td></td>
			<td><s:textfield name="ownDamagePremium" id="total1" theme="simple"/></td>
			<td><s:textfield name="tpPremium" id="total2" theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" id="total3" theme="simple"/></td>
			<td><s:textfield name="serviceTax" id="total4" theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" id="total5" theme="simple"/></td>
		</tr>

		<!-- <tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr> -->		
		<tr style="background-color: darkblue">
								<td colspan="8" style="color: white"><center>
										<b>Brokerage Details</b>
									</center></td>
							</tr>
							<tr>
								<td colspan="2">Insurance Company Name</td>
								<td colspan="2">Share of Company (%)</td>
								<td colspan="2">Percentage(%)</td>
								<td colspan="2">Amount</td>
							</tr>
							<tr>
								<td colspan="2"><s:select name="insuranceCompanyName"
										list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
										theme="simple">
									</s:select> <!-- <select name="insurance_company_name">
							<option>Bharti Axa General Insurance Co</option>
							<option>TATA Aig General Insurance Co Ltd</option>
							<option>HDFC Ergo General Insurance Co Ltd</option>
							<option>BAJAJ Alliance General Insurance Co Ltd</option>
					</select> --></td>
								<td colspan="2"><s:textfield name="shareOfCompany"
										theme="simple" onblur="javascript:getBrokerageAmountForMotor(0);"/></td>
								<td colspan="2"><s:textfield name="percentage"
										theme="simple" value="12"/></td>
								<td colspan="2"><s:textfield name="amount" theme="simple" /></td>
							</tr>
							
							<tr>
								<td colspan="2"><s:select name="insuranceCompanyName"
										list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
										theme="simple">
									</s:select> <!-- <select name="insurance_company_name">
							<option>Bharti Axa General Insurance Co</option>
							<option>TATA Aig General Insurance Co Ltd</option>
							<option>HDFC Ergo General Insurance Co Ltd</option>
							<option>BAJAJ Alliance General Insurance Co Ltd</option>
					</select> --></td>
								<td colspan="2"><s:textfield name="shareOfCompany"
										theme="simple" onblur="javascript:getBrokerageAmountForMotor(1);"/></td>
								<td colspan="2"><s:textfield name="percentage"
										theme="simple" value="12"/></td>
								<td colspan="2"><s:textfield name="amount" theme="simple" /></td>
							</tr>
							
							<tr>
								<td colspan="2"><s:select name="insuranceCompanyName"
										list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
										theme="simple">
									</s:select> <!-- <select name="insurance_company_name">
							<option>Bharti Axa General Insurance Co</option>
							<option>TATA Aig General Insurance Co Ltd</option>
							<option>HDFC Ergo General Insurance Co Ltd</option>
							<option>BAJAJ Alliance General Insurance Co Ltd</option>
					</select> --></td>
								<td colspan="2"><s:textfield name="shareOfCompany"
										theme="simple" onblur="javascript:getBrokerageAmountForMotor(2);"/></td>
								<td colspan="2"><s:textfield name="percentage"
										theme="simple" value="12"/></td>
								<td colspan="2"><s:textfield name="amount" theme="simple" /></td>
							</tr>
							
							<tr>
								<td colspan="2"><s:select name="insuranceCompanyName"
										list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
										theme="simple">
									</s:select> <!-- <select name="insurance_company_name">
							<option>Bharti Axa General Insurance Co</option>
							<option>TATA Aig General Insurance Co Ltd</option>
							<option>HDFC Ergo General Insurance Co Ltd</option>
							<option>BAJAJ Alliance General Insurance Co Ltd</option>
					</select> --></td>
								<td colspan="2"><s:textfield name="shareOfCompany"
										theme="simple" onblur="javascript:getBrokerageAmountForMotor(3);"/></td>
								<td colspan="2"><s:textfield name="percentage"
										theme="simple" value="12"/></td>
								<td colspan="2"><s:textfield name="amount" theme="simple" /></td>
							</tr>
							
							<tr>
								<td colspan="2"><s:select name="insuranceCompanyName"
										list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
										theme="simple">
									</s:select> <!-- <select name="insurance_company_name">
							<option>Bharti Axa General Insurance Co</option>
							<option>TATA Aig General Insurance Co Ltd</option>
							<option>HDFC Ergo General Insurance Co Ltd</option>
							<option>BAJAJ Alliance General Insurance Co Ltd</option>
					</select> --></td>
								<td colspan="2"><s:textfield name="shareOfCompany"
										theme="simple" onblur="javascript:getBrokerageAmountForMotor(4);"/></td>
								<td colspan="2"><s:textfield name="percentage"
										theme="simple" value="12"/></td>
								<td colspan="2"><s:textfield name="amount" theme="simple" /></td>
							</tr>
	</table>
</div>
