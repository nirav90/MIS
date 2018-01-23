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

<div id="Marine Open Import" class="t">

	<table width="100%">

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>

		 <tr>
             <td> Sum Insured in INR</td>
             <td> Policy Rate %</td>
             <td> Premium Net of S.T.</td>
             <td> Service Tax</td>
             <td>Stamp Duty if any</td>
             <td>Total Premium Paid</td>
         </tr>
         
         <tr><td><b>Expected Annual Turnover </b></td>
             <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(0);"/></td>
             <td rowspan="4"> <s:textfield name="policyRate" id="policyRate" theme="simple" onchange="javascript:getTotalPremiumNetOfServiceTax3(0);"/></td>
             <td rowspan="4"> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(0);"/></td>
             <td rowspan="4"> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(0);"/></td>
             <td rowspan="4"> <s:textfield name="stampDuty" id="stampDuty" theme="simple" onchange="javascript:getTotalStampDuty(0);" onblur="javascript:getTotalstampDuty(0);"/></td>
             <td rowspan="4"> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple" onblur="javascript:getTotalPremiumPaid(0);"/></td>
         </tr>
         
          <tr><td><b>Initial Sum Insured </b></td>                    
              <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(1);"/></td>
          </tr>
          
          <tr><td><b> Per Bottom Limit </b></td>                    
              <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(2);"/></td>
          </tr>   
          
          <tr><td><b>Limit Per Location </b></td>                    
              <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(3);"/></td>
          </tr>
                         
          <tr><td><b>Total</b></td>                    
              <td> </td>
              <td> </td>
              <td> <s:textfield name="premiumNetOfServiceTax" id="total3" theme="simple"/></td>
              <td> <s:textfield name="serviceTax" id="total4" theme="simple"/></td>
              <td> <s:textfield name="stampDuty" id="total9" theme="simple"/></td>
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