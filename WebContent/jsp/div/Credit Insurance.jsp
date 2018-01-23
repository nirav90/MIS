<%@ taglib uri="/struts-tags" prefix="s"  %>
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
            <td> Total Premium Paid</td>
			
		</tr>
		<tr><td><b><s:label theme="simple"> Anual Turnover Limit </s:label></b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onchange="javascript:getTotalSum1(0);"/></td>
                        <td> <s:textfield name="discount" id="discount" theme="simple" onchange="javascript:getT(0);"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" id="premiumBeforeTerroAndTax" theme="simple" onblur="javascript:getTotalpremiumBeforeTerroAndTax(0);"/></td>
                        <td> <s:textfield name="terrorismPremium" id="terrorismPremium" theme="simple" onchange="javascript:getB(0);javascript:getTotalTerrorismPremium(0);"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onchange="javascript:getTotalpremiumNetOfServiceTax(0);"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onchange="javascript:getTotalServiceTax(0);"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple" onchange="javascript:getTotalPremiumPaid(0);"/></td>
                        </tr>
                    <tr><td><b><s:label theme="simple"> PBL </s:label></b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onchange="javascript:getTotalSum1(1);"/></td>
                        <td> <s:textfield name="discount" id="discount" theme="simple" onchange="javascript:getT(1);" /></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" id="premiumBeforeTerroAndTax" theme="simple" onchange="javascript:getTotalpremiumBeforeTerroAndTax(1);"/></td>
                        <td> <s:textfield name="terrorismPremium" id="terrorismPremium" onchange="javascript:getB(1);javascript:getTotalTerrorismPremium(1);" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onchange="javascript:getTotalpremiumNetOfServiceTax(1);"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onchange="javascript:getTotalServiceTax(1);"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple" onchange="javascript:getTotalPremiumPaid(1);"/></td>
                        </tr>
                    <tr><td><b><s:label theme="simple"> PLL </s:label></b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple" onchange="javascript:getTotalSum1(2);"/></td>
                        <td> <s:textfield name="discount" id="discount" theme="simple" onchange="javascript:getT(2);"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" id="premiumBeforeTerroAndTax" theme="simple" onchange="javascript:getTotalpremiumBeforeTerroAndTax(2);"/></td>
                        <td> <s:textfield name="terrorismPremium" id="terrorismPremium" onchange="javascript:getB(2);javascript:getTotalTerrorismPremium(2);" theme="simple"  /></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple" onchange="javascript:getTotalpremiumNetOfServiceTax(2);"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple" onchange="javascript:getTotalServiceTax(2);"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple" onchange="javascript:getTotalPremiumPaid(2);"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="total1" theme="simple" /></td>
                        <td>  </td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" id="total2" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" id="total3" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="total4" theme="simple"/></td>
                        <td>  <s:textfield name="serviceTax" id="total5" theme="simple"/> </td>
                        <td> <s:textfield name="totalPremiumPaid" id="total6" theme="simple"/></td>
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
                        <td> Total Premium Paid</td>
                        </tr>
                    <tr><td><b> Anual Turnover Limit</b></td>
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" id="discount" theme="simple" onchange="javascript:getT(4);"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" id="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" id="terrorismPremium" onchange="javascript:getB(4);" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> PBL </b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" id="discount" theme="simple" onchange="javascript:getT(5);" /></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" id="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" id="terrorismPremium" onchange="javascript:getB(5);" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b> PLL </b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td> <s:textfield name="discount" id="discount" theme="simple" onchange="javascript:getT(6);"/></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" id="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" id="terrorismPremium" onchange="javascript:getB(6);" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:textfield name="serviceTax" id="serviceTax" theme="simple"/></td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:textfield name="sumInsINR" id="sumInsINR" theme="simple"/></td>
                        <td></td>
                        <td> <s:textfield name="premiumBeforeTerroAndTax" id="premiumBeforeTerroAndTax" theme="simple"/></td>
                        <td> <s:textfield name="terrorismPremium" id="terrorismPremium" theme="simple"/></td>
                        <td> <s:textfield name="premiumNetOfServiceTax" id="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:textfield name="totalPremiumPaid" id="totalPremiumPaid" theme="simple"/></td>
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
