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
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td><b> Vahicle Make and Model </b></td>
			<td><s:label name="Details" theme="simple"/></td>
			<td rowspan="7"><s:label name="discount" theme="simple"/></td>
			<td rowspan="7"><s:label name="ownDamagePremium" theme="simple"/></td>
			<td rowspan="7"><s:label name="tpPremium" theme="simple"/></td>
			<td rowspan="7"><s:label name="premiumNetOfServiceTax" theme="simple"/></td>
			<td rowspan="7"><s:label name="serviceTax" theme="simple"/></td>
			<td rowspan="7"><s:label name="totalPremiumPaid" theme="simple"/></td>
		</tr>
		<tr>
			<td><b> Insured Declared Value </b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Year of Manufacturing </b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Type of Vehicle </b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Registration No </b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Eng No </b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b> Chessis No </b></td>
			<td><s:label name="Details" theme="simple"/></td>

		</tr>
		<tr>
			<td><b>Total</b></td>
			<td><s:label name="Details" theme="simple"/></td>
			<td></td>
			<td><s:label name="ownDamagePremium" theme="simple"/></td>
			<td><s:label name="tpPremium" theme="simple"/></td>
			<td><s:label name="premiumNetOfServiceTax" theme="simple"/></td>
			<td><s:label name="serviceTax" theme="simple"/></td>
			<td><s:label name="totalPremiumPaid" theme="simple"/></td>
		</tr>

		<tr style="background-color: darkblue">
			<td colspan="8" style="color: white"><b><center>Other Coverages</center></b></td>
		</tr>
		
	</table>
</div>
