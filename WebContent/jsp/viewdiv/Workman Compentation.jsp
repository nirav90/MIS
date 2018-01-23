<%@ taglib uri="/struts-tags" prefix="s"  %>
<div id="Workman Compentation" class="t">

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
                        <td> <s:label name="number" theme="simple"/></td>
                        <td> <s:label name="salaryPm" theme="simple"/></td>
                        <td> <s:label name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td> <s:label name="rate" theme="simple"/></td>
                        <td> <s:label name="discount" theme="simple"/></td>
                        <td> <s:label name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:label name="serviceTax" theme="simple"/></td>
                        <td> <s:label name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b>Unskilled </b></td>                    
                        <td> <s:label name="number" theme="simple"/></td>
                        <td> <s:label name="salaryPm" theme="simple"/></td>
                        <td> <s:label name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td> <s:label name="rate" theme="simple"/></td>
                        <td> <s:label name="discount" theme="simple"/></td>
                        <td> <s:label name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:label name="serviceTax" theme="simple"/></td>
                        <td> <s:label name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:label name="number" theme="simple"/></td>
                        <td> <s:label name="salaryPm" theme="simple"/></td>
                        <td> <s:label name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td></td>
                        <td></td>
                        <td> <s:label name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:label name="totalPremiumPaid" theme="simple"/></td>
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
                        <td> <s:label name="number" theme="simple"/></td>
                        <td> <s:label name="salaryPm" theme="simple"/></td>
                        <td> <s:label name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td> <s:label name="rate" theme="simple"/></td>
                        <td> <s:label name="discount" theme="simple"/></td>
                        <td> <s:label name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:label name="serviceTax" theme="simple"/></td>
                        <td> <s:label name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                    <tr><td><b>Unskilled </b></td>                    
                        <td> <s:label name="number" theme="simple"/></td>
                        <td> <s:label name="salaryPm" theme="simple"/></td>
                        <td> <s:label name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td> <s:label name="rate" theme="simple"/></td>
                        <td> <s:label name="discount" theme="simple"/></td>
                        <td> <s:label name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> <s:label name="serviceTax" theme="simple"/></td>
                        <td> <s:label name="totalPremiumPaid" theme="simple"/></td>
                        </tr>
                        
                        <tr><td><b>Total</b></td>                    
                        <td> <s:label name="number" theme="simple"/></td>
                        <td> <s:label name="salaryPm" theme="simple"/></td>
                        <td> <s:label name="totalSumInsuredPerAnnum" theme="simple"/></td>
                        <td></td>
                        <td></td>
                        <td> <s:label name="premiumNetOfServiceTax" theme="simple"/></td>
                        <td> </td>
                        <td> <s:label name="totalPremiumPaid" theme="simple"/></td>
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
			<td colspan="2"><s:label name=""  theme="simple"/></td>
			<td colspan="2"><s:label name="" theme="simple"/></td>
		</tr>
	</table>
</div>
