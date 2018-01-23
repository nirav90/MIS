<%@ taglib uri="/struts-tags" prefix="s"  %>
<div id="Motor Act Only" class="t">
	
	<table width="100%">
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b>
			<center>Sum	Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7">
			<center><b>Details</b></center></td>
		</tr>
		
		
		<tr>
			<td>Details</td>
			<td>Discount (%)</td>
			<td>Own Damage Premium</td>
			<td>TP Premium</td>
			<td>Premium Net of Service Tax</td>
			<td>Service Tax</td>
			<td>Total Premium Paid</td>
			<td></td>
			<td></td>
		</tr>
		
		<tr>
			<td><b><s:label> Vahicle Make and Model </s:label></b></td>
			<td><s:textfield name="Details" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="discount" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="ownDamagePremium" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="tpPremium" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="serviceTax" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="totalPremiumPaid" theme="simple"/></td>
		</tr>
		
		<tr>
			<td><b><s:label> Insured Declared Value</s:label> </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Year of Manufacturing </s:label></b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Type of Vehicle </s:label></b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Registration No </s:label></b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Eng No </s:label></b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Chessis No</s:label> </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label>Total</s:label></b></td>
			<td><s:textfield name="Details" theme="simple"/></td>
			<td></td>
			<td><s:textfield name="ownDamagePremium" theme="simple"/></td>
			<td><s:textfield name="tpPremium" theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" theme="simple"/></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white">
			<b><center>Other Coverages</center></b></td>
		</tr>
	</table>
</div>

<div id="Credit_insurance" class="t">

	<table width="100%">
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b>
			<center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7">
			<center><b>Details</b></center></td>
		</tr>

		<tr>
			<td>Sum Insured in INR</td>
			<td>Discount(%)</td>
			<td> Premium Before Terro and Tax </td>
			<td> Terrorism Premium </td>
            <td> Premium Net of Service Tax</td>
            <td> Service Tax</td>
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		<tr><td><b><s:label> Anual Turnover Limit </s:label></b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b><s:label> PBL </s:label></b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b><s:label> PLL </s:label></b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                    <tr><td><b> Anual Turnover Limit</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> PBL </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> PLL </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
	
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			
			<td colspan="2"><s:textfield name="percentage" required
				onchange="GetAmount()" theme="simple"/></td>
			
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		
		</tr>
	
	</table>
</div>

<div id="Burglary" class="t">

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
			<td>Policy Rate %</td>
			<td>Premium Net of S.T.</td>
			<td>Service Tax</td>
			<td>Stamp Duty if any</td>
			<td>Total Premium Paid</td>
			<td></td>
		</tr>
		<tr>
			<td><b>Burglary Sum Insured</b></td>
			<td><s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
			<td><s:textfield name="policyRate" id="policyRate" theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
			<td><s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
			<td></td>
		</tr>
		<tr>
			<td><b>First Loss Sum Insured(if any)</b></td>
			<td><s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
			<td><s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
			<td><s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
			<td></td>
		</tr>
		<tr>
			<td><b>Total</b></td>
			<td><s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
			<td></td>
			<td><s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
			<td><s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
			<td></td>
		</tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
		
		<tr>
			<td>Sum Insured in INR</td>
			<td>Policy Rate %</td>
			<td>Premium Net of S.T.</td>
			<td>Service Tax</td>
			<td>Stamp Duty if any</td>
			<td>Total Premium Paid</td>
			<td></td>
		</tr>
		
		<tr>
			<td><b><s:textfield name="line_1" theme="simple"/></b></td>
			<td><s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
			<td><s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" theme="simple"/></td>
			<td><s:textfield name="stampDuty" required theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" theme="simple"/></td>
			<td></td>
		</tr>
	
		<tr>
			<td><b><s:textfield name="line_2" theme="simple"/></b></td>
			<td><s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
			<td><s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" theme="simple"/></td>
			<td><s:textfield name="stampDuty" required theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" theme="simple"/></td>
			<td></td>
		</tr>

		<tr>
			<td><b>Total</b></td>
			<td><s:textfield name="sumInsINR" theme="simple"/></td>
			<td></td>
			<td><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" theme="simple"/></td>
			<td><s:textfield name="stampDuty" theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" theme="simple"/></td>
			<td></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
	
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
	
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Directors_and_officers_liability" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		
		<tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                    
                     <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Event_and_media_liability" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		 <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                     <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
	
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Export_credit_gurantee" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		<tr><td><b> Anual Turnover Limit</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> PBL </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> PLL </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
	
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                    <tr><td><b> Anual Turnover Limit</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> PBL </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> PLL </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
	
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Fire_long_term" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		<tr><td><b> Building Including plinth & Foundation </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Plant and Machinery </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Stock In Process </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                     <tr><td><b> Stock at Wherehouse </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>   
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                    <tr><td><b> Building Including plinth & Foundation </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Plant and Machinery </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Stock In Process </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                     <tr><td><b> Stock at Wherehouse </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>   
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Fire" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		<tr><td><b> Building Including plinth & Foundation </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Plant and Machinery </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Stock In Process </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                     <tr><td><b> Stock at Wherehouse </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>   
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                    <tr><td><b> Building Including plinth & Foundation </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Plant and Machinery </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Stock In Process </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                     <tr><td><b> Stock at Wherehouse </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>   
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Group_mediclaim" class="t">

	<table width="100%">
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> No </td>
                        <td> Sum Insured in INR</td>
                        <td> Premium Net of Tax</td>
                        <td> Service Tax</td>
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b>No Of Employee Covered </b></td>
                        <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                    <tr><td><b>No of Spouse Covered </b></td>  
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>No of Dependant Child Covered</b></td>
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>No of Dependant Parants Covered</b></td>
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                      
                    <tr><td><b>Total</b></td>
                        <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> No </td>
                        <td> Sum Insured in INR</td>
                        <td> Premium Net of Tax</td>
                        <td> Service Tax</td>
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b>No Of Employee Covered </b></td>
                        <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                    <tr><td><b>No of Spouse Covered </b></td>  
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>No of Dependant Child Covered</b></td>
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>No of Dependant Parants Covered</b></td>
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                      
                    <tr><td><b>Total</b></td>
                        <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Group_personal_accident" class="t">

	<table width="100%">
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr>
                        <td> No </td>
                        <td> Sum Insured in INR</td>
                        <td> Premium Net of Tax</td>
                        <td> Service Tax</td>
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b>No Of Employee Covered </b></td>
                        <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                    <tr><td><b>No of Spouse Covered </b></td>  
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>No of Dependant Child Covered</b></td>
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>No of Dependant Parants Covered</b></td>
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                      
                    <tr><td><b>Total</b></td>
                        <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr>
                        <td> No </td>
                        <td> Sum Insured in INR</td>
                        <td> Premium Net of Tax</td>
                        <td> Service Tax</td>
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b>No Of Employee Covered </b></td>
                        <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                    <tr><td><b>No of Spouse Covered </b></td>  
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>No of Dependant Child Covered</b></td>
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>No of Dependant Parants Covered</b></td>
                         <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                      
                    <tr><td><b>Total</b></td>
                        <td> <s:textfield name="no" theme="simple"/></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Individual_mediclaim" class="t">

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
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b>Name of Self</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                    <tr><td><b>Name of Spouse </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>Name of Child 1</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>Name of Child 2</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                      
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

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
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b>Name of Self</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                    <tr><td><b>Name of Spouse </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>Name of Child 1</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>Name of Child 2</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                      
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Individual_personal_accident" class="t">

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
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b>Name of Self</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                    <tr><td><b>Name of Spouse </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>Name of Child 1</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>Name of Child 2</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                      
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>    
                        
                        <tr style="background-color: darkblue"><td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td></tr>
                        <tr style="background-color: darkblue"><td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td></tr>
                    
                        <tr><td rowspan="2"><b><center>Particulars</center></b></td><td colspan="7"><center><b>Details</b></center></td>
                        </tr>
                        <tr>
                        <td> Sum Insured in INR</td>
                        <td> Date Of Birth</td>
                        <td> Premium Net of Tax</td>
                        <td> Service Tax</td>
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b>Name of Self</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                    <tr><td><b>Name of Spouse </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>Name of Child 1</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                     <tr><td><b>Name of Child 2</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <input type="date" name="dob" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>
                      
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td><td></td>
                        </tr>


		
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Industrial_act_liability" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		 <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                     <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Industrial_all_risk" class="t">

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td><s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td><s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Marine_hull_insurance" class="t">

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Expected Annual Turnover </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Initial Sum Insured </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b> Per Bottom Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>   
                       <tr><td><b>Limit Per Location </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                         <tr><td><b>Basis Of Valuation </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
	
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
	
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Marine_open_export" class="t">

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Expected Annual Turnover </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Initial Sum Insured </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b> Per Bottom Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>   
                       <tr><td><b>Limit Per Location </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                         <tr><td><b>Basis Of Valuation </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Marine_open_import" class="t">

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Expected Annual Turnover </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Initial Sum Insured </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b> Per Bottom Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>   
                       <tr><td><b>Limit Per Location </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                         <tr><td><b>Basis Of Valuation </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Marine_open_inland" class="t">

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Expected Annual Turnover </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Initial Sum Insured </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b> Per Bottom Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>   
                       <tr><td><b>Limit Per Location </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                         <tr><td><b>Basis Of Valuation </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Marine_specific_export" class="t">

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Expected Annual Turnover </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Initial Sum Insured </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b> Per Bottom Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>   
                       <tr><td><b>Limit Per Location </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                         <tr><td><b>Basis Of Valuation </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Marine_specific_import" class="t">

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Expected Annual Turnover </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Initial Sum Insured </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b> Per Bottom Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>   
                       <tr><td><b>Limit Per Location </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                         <tr><td><b>Basis Of Valuation </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Marine_specific_inland" class="t">

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Expected Annual Turnover </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Initial Sum Insured </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b> Per Bottom Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>   
                       <tr><td><b>Limit Per Location </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                         <tr><td><b>Basis Of Valuation </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td> 
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Marine_stop" class="t">

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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Expected Annual Turnover </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Initial Sum Insured </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b> Per Bottom Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>   
                       <tr><td><b>Limit Per Location </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                         <tr><td><b>Basis Of Valuation </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="policyRate" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
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
                        <td>Total Premium Paid</td><td></td>
                        </tr>
                    <tr><td><b>Building including Plinth and Fundation</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" required theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate" required theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" required theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="stampDuty" id="stampDuty" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Money_insurance" class="t">

	<table width="100%">
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>

		 <tr>
                        <td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                    <tr><td><b> Annual Limit </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Per Location Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Single Carrying Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td> 
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> No Of Employee Involved </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>    
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr> 


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					 <tr>
                        <td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                    <tr><td><b> Annual Limit </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Per Location Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> Single Carrying Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> No Of Employee Involved </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>    
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr> 

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Motor_comprehensive" class="t">
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
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td><b> Vahicle Make and Model </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="discount" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="ownDamagePremium" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="tpPremium" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="serviceTax" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="totalPremiumPaid" theme="simple"/></td>
		</tr>
		<tr>
			<td><b> Insured Declared Value </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Year of Manufacturing </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Type of Vehicle </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Registration No </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Eng No </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Chessis No </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b>Total</b></td>
			<td><s:textfield name="Details" theme="simple"/></td>
			<td></td>
			<td><s:textfield name="ownDamagePremium" theme="simple"/></td>
			<td><s:textfield name="tpPremium" theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" theme="simple"/></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		
	</table>
</div>

<div id="Motor_trade_plate" class="t">
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
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><b> Vahicle Make and Model </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="discount" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="ownDamagePremium" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="tpPremium" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="serviceTax" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="totalPremiumPaid" theme="simple"/></td>
		</tr> 
		<tr>
			<td><b> Insured Declared Value </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Year of Manufacturing </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Type of Vehicle </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Registration No </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Eng No </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Chessis No </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b>Total</b></td>
			<td><s:textfield name="Details" theme="simple"/></td>
			<td></td>
			<td><s:textfield name="ownDamagePremium" theme="simple"/></td>
			<td><s:textfield name="tpPremium" theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" theme="simple"/></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		
	</table>
</div>

<div id="Motor_transit_insurance" class="t">
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
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><b> Vahicle Make and Model </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="discount" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="ownDamagePremium" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="tpPremium" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="serviceTax" theme="simple"/></td>
			<td rowspan="7"><s:textfield name="totalPremiumPaid" theme="simple"/></td>
		</tr>
		<tr>
			<td><b> Insured Declared Value </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Year of Manufacturing </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Type of Vehicle </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Registration No </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Eng No </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Chessis No </b></td>
			<td><s:textfield name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b>Total</b></td>
			<td><s:textfield name="Details" theme="simple"/></td>
			<td></td>
			<td><s:textfield name="ownDamagePremium" theme="simple"/></td>
			<td><s:textfield name="tpPremium" theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" theme="simple"/></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		
	</table>
</div>

<div id="Non_industrial_liability" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		 <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                     <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Port_liability" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		 <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                     <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Professional_indemnity" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		 <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                     <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>

		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>

		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Public_liability_act_only" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		 <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                     <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Public_liability" class="t">

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
            <td> Total Premium Paid</td><td></td><td></td>
			<td></td>
		</tr>
		 <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr><td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                     <tr><td><b> Total Liability Sum Insured</b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOA Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> AOY Limit </b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Special_contigency" class="t">

	<table width="100%">
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>

		<tr>                        
                        <td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                    <tr><td><b> <s:textfield name="entry" theme="simple"/> </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					<tr>                        
                        <td> Sum Insured in INR </td>
                        <td> Discount (%)</td>
                        <td> Premium Before Terro and Tax </td>
                        <td> Terrorism Premium </td>
                        <td> Premium Net of Service Tax</td>
                        <td> Service Tax</td>
                        <td> Total Premium Paid</td><td></td><td></td>
                        </tr>
                    <tr><td><b> <s:textfield name="entry" theme="simple"/> </b></td>
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="WC" class="t">

	<table width="100%">
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>

		 <tr>
                        <td> No. Of Workers</td>
                        <td> Salary P.M </td>
                        <td> Total Sum Insured per P.A</td>
                        <td> Rate </td>
                        <td> Discount (%)</td>
                        <td> Premium Net of Tax</td>
                        <td> Service Tax</td>
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b> Skilled</b></td>
                        <td> <s:textfield name="number" theme="simple"/></td>
                        <td> <s:textfield name="salaryPm" theme="simple"/></td>
                        <td> <s:textfield name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td> <s:textfield name="rate" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b>Unskilled </b></td>                    
                        <td> <s:textfield name="number" theme="simple"/></td>
                        <td> <s:textfield name="salaryPm" theme="simple"/></td>
                        <td> <s:textfield name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td> <s:textfield name="rate" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="number" theme="simple"/></td>
                        <td> <s:textfield name="salaryPm" theme="simple"/></td>
                        <td> <s:textfield name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td></td>
                        <td></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>


		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Sum Insured Details</center></b></td>
		</tr>

		<tr>
			<td rowspan="2"><b><center>Particulars</center></b></td>
			<td colspan="7"><center><b>Details</b></center></td>
		</tr>
					 <tr>
                        <td> No. Of Workers</td>
                        <td> Salary P.M </td>
                        <td> Total Sum Insured per P.A</td>
                        <td> Rate </td>
                        <td> Discount (%)</td>
                        <td> Premium Net of Tax</td>
                        <td> Service Tax</td>s
                        <td>Premium Payable</td><td></td><td></td>
                        </tr>
                    <tr><td><b> Skilled</b></td>
                        <td> <s:textfield name="number" theme="simple"/></td>
                        <td> <s:textfield name="salaryPm" theme="simple"/></td>
                        <td> <s:textfield name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td> <s:textfield name="rate" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b>Unskilled </b></td>                    
                        <td> <s:textfield name="number" theme="simple"/></td>
                        <td> <s:textfield name="salaryPm" theme="simple"/></td>
                        <td> <s:textfield name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td> <s:textfield name="rate" theme="simple"/></td>
                        <td> <s:textfield name="discount" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="number" theme="simple"/></td>
                        <td> <s:textfield name="salaryPm" theme="simple"/></td>
                        <td> <s:textfield name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td></td>
                        <td></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" theme="simple"/></td>
                        </tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><center><b>Brokerage Details</b></center></td>
		</tr>
		<tr>
			<td colspan="4">Insurance Company Name</td>
			<td colspan="2">Percentage(%)</td>
			<td colspan="2">Amount</td>
		</tr>
		<tr>
			<td colspan="4"><select name="insurance_company_name">
					<option>Bharti Axa General Insurance Co</option>
					<option>TATA Aig General Insurance Co Ltd</option>
					<option>HDFC Ergo General Insurance Co Ltd</option>
					<option>BAJAJ Alliance General Insurance Co Ltd</option>
			</select></td>
			<td colspan="2"><s:textfield name="percentage" required theme="simple"/></td>
			<td colspan="2"><s:textfield name="amount" theme="simple"/></td>
		</tr>
	</table>
</div>
