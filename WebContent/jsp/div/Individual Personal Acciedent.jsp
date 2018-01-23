<%@ taglib uri="/struts-tags" prefix="s"  %>
<div id="Individual Personal Acciedent" class="t">

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
                        <td> Date Of Birth</td>
                        <td> Premium Net of Tax</td>
                        <td> Service Tax</td>
                        <td>Premium Payable</td>
                        </tr>
                    <tr><td><b>Name of Self</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(0);"/></td>
                        <td> <input type="date" name="dob" id="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(0);" onchange="javascript:getTotalpremiumPaid(0);"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(0);javascript:getTotalPremiumPaid(0);"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/>
                        </tr>
                    <tr><td><b>Name of Spouse </b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(1);"/></td>
                        <td> <input type="date" name="dob" id="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(1);" onchange="javascript:getTotalpremiumPaid(1);"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(1);javascript:getTotalPremiumPaid(1);"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/>
                        </tr>
                     <tr><td><b>Name of Child 1</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(2);"/></td>
                        <td> <input type="date" name="dob" id="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(2);" onchange="javascript:getTotalpremiumPaid(2);"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(2);javascript:getTotalPremiumPaid(2);"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/>
                        </tr>
                     <tr><td><b>Name of Child 2</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(3);"/></td>
                        <td> <input type="date" name="dob" id="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(3);" onchange="javascript:getTotalpremiumPaid(3);"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(3);javascript:getTotalPremiumPaid(3);"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/>
                        </tr>
                        
                        <tr><td><b>Name of Parent 1</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(4);"/></td>
                        <td> <input type="date" name="dob" id="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(4);" onchange="javascript:getTotalpremiumPaid(4);"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(4);javascript:getTotalPremiumPaid(4);"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/>
                        </tr>
                     <tr><td><b>Name of Parent 2</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onblur="javascript:getTotalsumInsINR(5);"/></td>
                        <td> <input type="date" name="dob" id="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onblur="javascript:getTotalpremiumNetOfServiceTax(5);" onchange="javascript:getTotalpremiumPaid(5);"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onblur="javascript:getTotalserviceTax(5);javascript:getTotalPremiumPaid(5);"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/>
                        </tr>
                      
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="total6" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="total3" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="total4" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="total5" theme="simple"/>
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
