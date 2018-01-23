<%@ taglib uri="/struts-tags" prefix="s"  %>

<table border='0' align="center" style="width: 100%; background-color: white;" cellpadding="4" cellspacing="2">

	<tr style="background-color: darkblue">
		<td colspan="8" style="color: white"><center><b>Risk Location</b></center></td>
	</tr>
	
	<tr>
		<td>Location name</td>
		<td colspan="3">Address</td>
		<td>City</td>
		<td>State</td>
		<td>Country</td>
		<td>Pincode</td>
	</tr>
	
	<tr>
		<td><s:textfield name="policyDetailForm.riskLocation" value="Unit 1" theme="simple" /></td>
		<td colspan="3"><s:textfield name="policyDetailForm.riskAddress" value="%{policyDetailForm.riskAddress}" theme="simple" /></td>
		<td><s:textfield name="policyDetailForm.city" value="%{policyDetailForm.city}" theme="simple" /></td>
		<td><s:textfield name="policyDetailForm.state" value="%{policyDetailForm.state}" theme="simple" /></td>
		<td><s:textfield name="policyDetailForm.country" value="%{policyDetailForm.country}" theme="simple" /></td>
		<td><s:textfield name="policyDetailForm.riskPincode" value="%{policyDetailForm.riskPincode}" theme="simple" /></td>
	</tr>
	
</table>

<div id="Fire Long Term" class="t">

	<table width="100%">
	
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>

		<tr>
			<td>Sum Insured in INR</td>
			<td>Discount(%)</td>
			<td> Premium Before Terro and Tax </td>
			<td> Terrorism Premium </td>
            <td> Premium Net of Service Tax</td>
            <td> Service Tax</td>
            <td> Total Premium Paid</td>		
		</tr>

		<tr><td><b> Building Including plinth & Foundation </b></td>
            <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(0);"/></td>
            <td> <s:textfield name="discount" id="discount" theme="simple"/></td>
            <td> <s:textfield name="premiumBeforeTerroAndTax" id="premiumBeforeTerroAndTax" theme="simple" onblur="javascript:getTotalpremiumBeforeTerroAndTax(0);"/></td>
            <td> <s:textfield name="terrorismPremium" id="terrorismPremium" theme="simple" onchange="javascript:getTotalPremiumNetOfServiceTax2(0);" onblur="javascript:getTotalterrorismPremium(0);"/></td>
            <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(0);javascript:getTotalserviceTax(0);javascript:getTotalPremiumPaid(0);"/></td>
            <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
            <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
        </tr>
                      
        <tr><td><b>Total</b></td>                    
            <td> <s:textfield name="sumInsINR" id="total6" theme="simple"/></td>
            <td></td>
            <td> <s:textfield name="premiumBeforeTerroAndTax" id="total7" theme="simple"/></td>
            <td> <s:textfield name="terrorismPremium" id="total8" theme="simple"/></td>
            <td> <s:textfield name="premiumNetOfServiceTax" id="total3" theme="simple"/></td>
            <td> <s:textfield name="serviceTax" id="total4" theme="simple"/></td>
            <td> <s:textfield name="totalPremiumPaid" id="total5" theme="simple"/></td>
        </tr>
		
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
										theme="simple" onblur="javascript:getBrokerageAmountForFire(0);"/></td>
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
										theme="simple" onblur="javascript:getBrokerageAmountForFire(1);"/></td>
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
										theme="simple" onblur="javascript:getBrokerageAmountForFire(2);"/></td>
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
										theme="simple" onblur="javascript:getBrokerageAmountForFire(3);"/></td>
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
										theme="simple" onblur="javascript:getBrokerageAmountForFire(4);"/></td>
								<td colspan="2"><s:textfield name="percentage"
										theme="simple" value="12"/></td>
								<td colspan="2"><s:textfield name="amount" theme="simple" /></td>
							</tr>
	</table>
	
</div>
