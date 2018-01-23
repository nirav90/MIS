
<%@ taglib uri="/struts-tags" prefix="s"  %>
<div id="motor act only" class="t">

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

<div id="Credit Insurance" class="t">

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
			
			<td colspan="2"><s:textfield name="" 
				onchange="GetAmount()" theme="simple"/></td>
			
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		
		</tr>
	
	</table>
</div>

<div id="Burglary Insurance" class="t">

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
			<td><s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
			<td><s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
			<td><s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
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
			<td><s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
			<td><s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" theme="simple"/></td>
			<td><s:textfield name="stampDuty"  theme="simple"/></td>
			<td><s:textfield name="totalPremiumPaid" theme="simple"/></td>
			<td></td>
		</tr>
	
		<tr>
			<td><b><s:textfield name="line_2" theme="simple"/></b></td>
			<td><s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
			<td><s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
			<td><s:textfield name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:textfield name="serviceTax" theme="simple"/></td>
			<td><s:textfield name="stampDuty"  theme="simple"/></td>
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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="directors And Officers Liabilty" class="t">

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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Event & Media Liabilty" class="t">

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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Export Credit Guarantee" class="t">

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
			
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Fire Insurance" class="t">

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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Group Mediclaim" class="t">

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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Group Personal Acciedent" class="t">

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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Individual Mediclaim" class="t">

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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Industrial Act Liability" class="t">

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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

<div id="Industrial All Risk" class="t">

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
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
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
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                    <tr><td><b>Plant and Machinery</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Furniture and Fixtures</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                     <tr><td><b>Stock and Stock in Process</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Machinery Break Down Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                      <tr><td><b>Business Inturuption Sum Insured</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>FLOP</b></td>                    
                        <td><s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td><s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td><td></td>
                        </tr>
                       <tr><td><b>MLOP</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR"  theme="simple"/></td>
                        <td> <s:textfield name="policyRate" id="policyRate"  theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="stampDuty" id="stampDuty"  theme="simple"/></td>
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
			<td colspan="2"><s:textfield name=""  theme="simple"/></td>
			<td colspan="2"><s:textfield name="" theme="simple"/></td>
		</tr>
	</table>
</div>

