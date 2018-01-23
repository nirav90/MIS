<%@ taglib uri="/struts-tags" prefix="s"  %>

<table border='0' align="center" style="width: 100%; background-color: white;" cellpadding="4" cellspacing="2">

	<tr style="background-color: darkblue">
		<td colspan="8" style="color: white"><center><b>Risk Location</b></center></td>
	</tr>
	
	<tr>
		<td>From</td>
		<td colspan="3">To</td>
		<td>Mode Of Transit</td>
		<td>Basis Of Valuation</td>
		<td>Coverage Details</td>
		<td>Special Condition/Access</td>
	</tr>
	
	<tr>
		<td><s:textfield name="policyDetailForm.riskLocation" value="%{policyDetailForm.riskLocation}" theme="simple" /></td>
		<td colspan="3"><s:textfield name="policyDetailForm.riskAddress" value="%{policyDetailForm.riskAddress}" theme="simple" /></td>
		<td><s:textfield name="policyDetailForm.city" value="%{policyDetailForm.city}" theme="simple" /></td>
		<td><s:textfield name="policyDetailForm.state" value="%{policyDetailForm.state}" theme="simple" /></td>
		<td><s:textfield name="policyDetailForm.country" value="%{policyDetailForm.country}" theme="simple" /></td>
		<td><s:textfield name="policyDetailForm.riskPincode" value="%{policyDetailForm.riskPincode}" theme="simple" /></td>
	</tr>
	
</table>

<div id="Workman Compentation" class="t">

	<table width="100%">
		
		<tr style="background-color: darkblue">
			<td colspan="9" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>

		<tr>
            <td> No. Of Workers</td>
            <td> Salary P.M </td>
            <td> Total Sum Insured P.A</td>
            <td> Rate </td>
            <td> Discount (%)</td>
            <td> Premium Net of Tax</td>
            <td> Service Tax</td>
            <td>Premium Payable</td>
        </tr>
        
        <tr><td><b> Skilled</b></td>
            <td> <s:textfield name="number" id="number" theme="simple" onblur="javascript:getTotalnumber(0);"/></td>
            <td> <s:textfield name="salaryPm" id="salaryPm" theme="simple" onblur="javascript:getTotalsalaryPm(0);"/></td>
            <td> <s:textfield name="totalSumInsuredPerAnnum" id="totalSumInsuredPerAnnum" theme="simple" onblur="javascript:getTotaltotalSumInsuredPerAnnum(0);"/></td>
            <td> <s:textfield name="rate" id="rate" theme="simple"/></td>
            <td> <s:textfield name="discount" id="discount" theme="simple"/></td>
            <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(0);" onchange="javascript:getTotalpremiumPaid(0);"/></td>
            <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(0);javascript:getTotalPremiumPaid(0);"/></td>
            <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
        </tr>
        
         <tr><td><b>Unskilled </b></td>                    
             <td> <s:textfield name="number" id="number" theme="simple" onblur="javascript:getTotalnumber(1);"/></td>
             <td> <s:textfield name="salaryPm" id="salaryPm" theme="simple" onblur="javascript:getTotalsalaryPm(1);"/></td>
             <td> <s:textfield name="totalSumInsuredPerAnnum" id="totalSumInsuredPerAnnum" theme="simple" onblur="javascript:getTotaltotalSumInsuredPerAnnum(1);"/></td>
             <td> <s:textfield name="rate" id="rate" theme="simple"/></td>
             <td> <s:textfield name="discount" id="discount" theme="simple"/></td>
             <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(1);" onchange="javascript:getTotalpremiumPaid(1);"/></td>
             <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(1);javascript:getTotalPremiumPaid(1);"/></td>
             <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
         </tr>
         
         <tr><td><b>Others </b></td>                    
             <td> <s:textfield name="number" id="number" theme="simple" onblur="javascript:getTotalnumber(2);"/></td>
             <td> <s:textfield name="salaryPm" id="salaryPm" theme="simple" onblur="javascript:getTotalsalaryPm(2);"/></td>
             <td> <s:textfield name="totalSumInsuredPerAnnum" id="totalSumInsuredPerAnnum" theme="simple" onblur="javascript:getTotaltotalSumInsuredPerAnnum(2);"/></td>
             <td> <s:textfield name="rate" id="rate" theme="simple"/></td>
             <td> <s:textfield name="discount" id="discount" theme="simple"/></td>
             <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(2);" onchange="javascript:getTotalpremiumPaid(2);"/></td>
             <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(2);javascript:getTotalPremiumPaid(2);"/></td>
             <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
         </tr>
                        
         <tr><td><b>Total</b></td>                    
             <td> <s:textfield name="number" id="total10" theme="simple"/></td>
             <td> <s:textfield name="salaryPm" id="total11" theme="simple"/></td>
             <td> <s:textfield name="totalSumInsuredPerAnnum" id="total12" theme="simple"/></td>
             <td></td>
             <td></td>
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
										theme="simple" onblur="javascript:getBrokerageAmountForMarine(0);"/></td>
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
										theme="simple" onblur="javascript:getBrokerageAmountForMarine(1);"/></td>
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
										theme="simple" onblur="javascript:getBrokerageAmountForMarine(2);"/></td>
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
										theme="simple" onblur="javascript:getBrokerageAmountForMarine(3);"/></td>
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
										theme="simple" onblur="javascript:getBrokerageAmountForMarine(4);"/></td>
								<td colspan="2"><s:textfield name="percentage"
										theme="simple" value="12"/></td>
								<td colspan="2"><s:textfield name="amount" theme="simple" /></td>
							</tr>

	</table>

</div>
