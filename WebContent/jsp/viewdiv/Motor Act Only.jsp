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
			<td><s:label name="Details" theme="simple"/></td>
			<td rowspan="7"><s:label name="discount" theme="simple"/></td>
			<td rowspan="7"><s:label name="ownDamagePremium" theme="simple"/></td>
			<td rowspan="7"><s:label name="tpPremium" theme="simple"/></td>
			<td rowspan="7"><s:label name="premiumNetOfServiceTax" theme="simple"/></td>
			<td rowspan="7"><s:label name="serviceTax" theme="simple"/></td>
			<td rowspan="7"><s:label name="totalPremiumPaid" theme="simple"/></td>
		</tr>
		
		<tr>
			<td><b><s:label> Insured Declared Value</s:label> </b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Year of Manufacturing </s:label></b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Type of Vehicle </s:label></b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Registration No </s:label></b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Eng No </s:label></b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label> Chessis No</s:label> </b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		
		<tr>
			<td><b><s:label>Total</s:label></b></td>
			<td><s:label name="Details" theme="simple"/></td>
			<td></td>
			<td><s:label name="ownDamagePremium" theme="simple"/></td>
			<td><s:label name="tpPremium" theme="simple"/></td>
			<td><s:label name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:label name="serviceTax" theme="simple"/></td>
			<td><s:label name="totalPremiumPaid" theme="simple"/></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white">
			<b><center>Other Coverages</center></b></td>
		</tr>
	</table>
</div>
