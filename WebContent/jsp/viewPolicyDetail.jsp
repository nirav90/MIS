

<%@ include file="./relationManagerHeader.jsp"%>

<!-- <input type="text" id="country" name="country"/>
	
	<script>
		$("#country").autocomplete("getdata.jsp");
	</script>  
 -->


<s:div>
	<h1>
		<center>Burglary Insurance</center>
	</h1>
</s:div>

<s:div>
	<s:form  action="updatePolicyDetail" method="POST">

		<s:div>
			<table border='0' align="center">
				<tr style="background-color: darkblue">
					<th colspan="4" style="color: white"><b><center>Personal
								Details</center></b></th>

					<th colspan="4" style="color: white"><b><center>Policy
								Details</center></b></th>
				</tr>

<s:iterator value="clientDetailForms">	
	<s:iterator value="list">
	
				<tr>
					<td colspan="2">Insured Name:</td>
					<td colspan="2">
						<%-- <s:textfield
							name="clientDetailForm.insuredName"
							value="%{clientDetailForm.insuredName}"  id="client" theme="simple" /> 
					 --%> <sx:autocompleter name="insuredName" autoComplete="true"
							id="auto" list="clientList" value="%{insuredName}" />

					</td>
					<td colspan="2">Type of Policy:</td>
					<td colspan="2"><sx:autocompleter name="policyName"
						value="%{policyName}"	autoComplete="true" list="policyList" /> <%-- <s:textfield
							name="policyDetailForm.policyName"
							value="%{policyDetailForm.policyName}" theme="simple" /> --%></td>
				</tr>
				<tr>
					<td colspan="2">Address of Communication:</td>
					<td colspan="2"><s:textfield name="clientDetailForm.address"
							value="%{address}" theme="simple" />
					<td colspan="2">Name of Insurance Company:</td>
					<td colspan="2"><s:textfield
							name="policyDetailForm.insuranceCompany"
							value="%{insuranceCompany}" theme="simple" /></td>
				</tr>
				<tr>
					<td colspan="2"></td>
					<td colspan="2"></td>
					<td colspan="2">Branch / DO of Insurance Company:</td>
					<td colspan="2"><s:textfield name="policyDetailForm.branch"
							value="%{branch}" theme="simple" /></td>
				</tr>
				<tr>
					<td colspan="2">Pincode:</td>
					<td colspan="2"><s:textfield name="clientDetailForm.pincode"
							value="%{pincode}" theme="simple" />
					<td colspan="2">Reference Person Name:</td>
					<td colspan="2"><s:textfield
							name="policyDetailForm.referencePerson"
							value="%{referencePerson}" theme="simple" /></td>
				</tr>
				<tr>
					<td colspan="2">Name of contact Person:</td>
					<td colspan="2"><s:textfield
							name="clientDetailForm.contactPerson"
							value="%{contactPerson}" theme="simple" />
					<td colspan="2">Date of Inward:</td>
					<td colspan="2"><s:textfield
							name="policyDetailForm.DateOfInward"
							value="%{DateOfInward}" theme="simple" /></td>
				</tr>
				<tr>
					<td colspan="2">Office No:</td>
					<td colspan="2"><s:textfield name="clientDetailForm.officeNo"
							value="%{officeNo}" theme="simple" />
					<td colspan="2">Risk Start Date:</td>
					<td colspan="2"><s:textfield
							name="policyDetailForm.riskStartDate"
							value="%{riskStartDate}" theme="simple" /></td>
				</tr>
				<tr>
					<td colspan="2">Fax No:</td>
					<td colspan="2"><s:textfield name="clientDetailForm.faxNo"
							value="%{faxNo}" theme="simple" />
					<td colspan="2">Risk End Date:</td>
					<td colspan="2"><s:textfield
							name="policyDetailForm.riskEndDate"
							value="%{riskEndDate}" theme="simple" /></td>
				</tr>
				<tr>
					<td colspan="2">Mobile No:</td>
					<td colspan="2"><s:textfield name="clientDetailForm.mobileNo"
							value="%{mobileNo}" theme="simple" />
					<td colspan="2">Policy No / Receipt No:</td>
					<td colspan="2"><s:textfield name="policyDetailForm.policyNo"
							value="%{policyNo}" theme="simple" />
				</tr>
				<tr>
					<td colspan="2">RM Name:</td>
					<td colspan="2"><s:textfield name="clientDetailForm.RmName"
							value="%{RmName}" theme="simple" /></td>
					<td colspan="2">Expiring policy no:</td>
					<td colspan="2"><s:textfield
							name="policyDetailForm.ExpirypolicyNo"
							value="%{ExpirypolicyNo}" theme="simple" />
				</tr>
				<tr>
					<td colspan="2">Email Id:</td>
					<td colspan="2"><s:textfield name="clientDetailForm.email"
							value="%{email}" theme="simple" />
				</tr>

				<tr style="background-color: darkblue">
					<td colspan="8" style="color: white"><center>
							<b>Risk Location</b>
						</center></td>
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
					<td><s:textfield name="policyDetailForm.riskLocation"
							value="%{policyDetailForm.riskLocation}" theme="simple" /></td>
					<td colspan="3"><s:textfield
							name="policyDetailForm.riskAddress"
							value="%{riskAddress}" theme="simple" /></td>
					<td><input type="text" name="city" required></td>
					<td><input type="text" name="state" required></td>
					<td><input type="text" name="country" required></td>
					<td><s:textfield name="policyDetailForm.riskPincode"
							value="%{riskPincode}" theme="simple" /></td>
				</tr>

</s:iterator>
</s:iterator>
				<tr style="background-color: darkblue">
					<td colspan="8" style="color: white"><b><center>Sum
								Insured Details</center></b></td>
				</tr>

				<!-- <tr>
					<td rowspan="2"><b><center>Particulars</center></b></td>
					<td colspan="7"><center>
							<b>Details</b>
						</center></td>
				</tr> -->

				<tr>
					<td><b>Particulars</b></td>
					<td>Sum Insured in INR</td>
					<td>Policy Rate %</td>
					<td>Premium Net of S.T.</td>
					<td>Service Tax</td>
					<td>Stamp Duty if any</td>
					<td>Total Premium Paid</td>
					<td></td>
					<%!int i = 0;%>
				</tr>



				<s:iterator value="sumInsuredForms">
					<%
						i++;
					%>
					<tr>
						<td><b><s:label value="%{particulars}" theme="simple" /></b></td>
						<td><s:textfield name="sumInsuerd" id="sum_insured1"
								theme="simple" value="%{sumInsINR}" /></td>
						<td><s:textfield name="policyRate" id="p_rate1"
								onchange="GetTotal1()" theme="simple" value="%{policyRate}" /></td>
						<td><s:textfield name="premiumeStax" id="net_premium1"
								theme="simple" value="%{premiumeST}" /></td>
						<td><s:textfield name="serviceTax" id="s_tax1" theme="simple"
								value="%{serviceTax}" /></td>
						<td><s:textfield name="stampDuty" id="s_duty1" theme="simple"
								onchange="GetFinalTotal1()" value="%{StampDuty}" /></td>
						<td><s:textfield name="totalPremium" id="tot_premium1"
								theme="simple" value="%{totalPremiumePaid}" /></td>
						<td></td>
					</tr>
					<%-- <tr>

					<%
						i++;
					%>
					<td><b>Burglary Sum Insured</b></td>
					<td><s:textfield name="sumInsuerd" id="sum_insured1"
							theme="simple" /></td>
					<td><s:textfield name="policyRate" id="p_rate1"
							onchange="GetTotal1()" theme="simple" /></td>
					<td><s:textfield name="premiumeStax" id="net_premium1"
							theme="simple" /></td>
					<td><s:textfield name="serviceTax" id="s_tax1" theme="simple" /></td>
					<td><s:textfield name="stampDuty" id="s_duty1" theme="simple"
							onchange="GetFinalTotal1()" /></td>
					<td><s:textfield name="totalPremium" id="tot_premium1"
							theme="simple" /></td>
					<td></td>

				</tr>
 --%>
				</s:iterator>

				<tr style="background-color: darkblue">
					<td colspan="8" style="color: white"><b><center>Other
								Coverages</center></b></td>
				</tr>
				<tr style="background-color: darkblue">
					<td colspan="8" style="color: white"><center>
							<b>Brokerage Details</b>
						</center></td>
				</tr>
				<tr>
					<td colspan="4">Insurance Company Name</td>
					<td colspan="2">Percentage(%)</td>
					<td colspan="2">Amount</td>
				</tr>

				<s:iterator value="brokerageDetailForms">
					<tr>
						<td colspan="4"><s:select name="insuranceCompanyName"
								list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
								value="%{insuranceCompanyName}" theme="simple">
							</s:select> <!-- <select name="insurance_company_name">
							<option>Bharti Axa General Insurance Co</option>
							<option>TATA Aig General Insurance Co Ltd</option>
							<option>HDFC Ergo General Insurance Co Ltd</option>
							<option>BAJAJ Alliance General Insurance Co Ltd</option>
					</select> --></td>
						<td colspan="2"><s:textfield name="percentage" theme="simple"
								value="%{percentage}" onchange="GetAmount()" /></td>
						<td colspan="2"><s:textfield name="amount" theme="simple"
								value="%{amount}" /></td>
					</tr>
				</s:iterator>


				<tr style="background-color: darkblue">
					<td colspan="8" style="color: white"><center>
							<b>Hypothication Details</b>
						</center></td>
				</tr>
				<tr>
					<td colspan="3">Name Of Bank</td>
					<td></td>
					<td colspan="2">City</td>
					<td colspan="3">Branch</td>

				</tr>

				<s:iterator value="hypothicationDetailForms">
					<tr>
						<td colspan="3"><s:select name="NameOfBank"
								value="%{NameOfBank}"
								list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
								theme="simple">
							</s:select></td>
						<td></td>
						<td colspan="2"><s:select name="city" value="%{city}"
								list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
								theme="simple">
							</s:select></td>
						<td colspan="3"><s:select name="Branch" value="%{Branch}"
								list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
								theme="simple">

							</s:select></td>
					</tr>
				</s:iterator>
				<tr style="background-color: darkblue">
					<td colspan="8" style="color: white"><b><center>Co-Insurance
								Details</center></b></td>
				</tr>
				<tr>
					<td colspan="4">Company Name</td>
					<td colspan="4">Share of Company (%)</td>
				</tr>

				<s:iterator value="coInsuranceDetailForms">
					<tr>

						<td colspan="4"><s:select name="CompanyName"
								list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
								theme="simple" value="%{CompanyName}">
							</s:select></td>
						<td colspan="4"><s:textfield name="shareOfCompany"
								value="%{shareOfCompany}" theme="simple" /></td>
					</tr>
				</s:iterator>

				<tr style="background-color: darkblue">
					<td colspan="8" style="color: white"><b><center>Payment
								Details</center></b></td>
				</tr>
				<tr>
					<td colspan="2">Mode Of Payment</td>
					<td colspan="3">Bank Name</td>
					<td>Cheque / DD No</td>
					<td>Cheque / DD Date</td>
					<td>Cheque / DD / Cash Amout</td>
				</tr>

<s:iterator value="paymentDetailForms">
				<tr>
			<td colspan="2"><s:select name="modeOfPayment"
						list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
						theme="simple"
						value="%{modeOfPayment}">
					</s:select></td>


				<td colspan="3"><s:select name="bankName"
						list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
						theme="simple"
						value="%{bankName}">
					</s:select></td>
				<td><s:textfield value="%{chequeOrDDNo}" name="chequeOrDDNo" theme="simple" /></td>

				<td><s:textfield value="%{chequeOrDDDate}" name="chequeOrDDDate" theme="simple" /></td>

				<td><s:textfield value="%{chequeOrDDAmount}" name="chequeOrDDAmount" theme="simple" /></td>
				</tr>
				
</s:iterator>				
				</table>
		</s:div>

<%
				int id1 = (Integer)request.getAttribute("clientID");
			request.setAttribute("clientID", id1);
	%>	
	
	<input type="hidden" value="<%=id1%>"  name="h1">
		<s:div>
			<table border="0" align="center">
				<tr>
					<td><center>
							<s:hidden name="counter" value="2" theme="simple" />
							<s:submit value="update" />
						</center></td>
					<td><center>
							<input type="reset" value="Cancel">
						</center></td>
				</tr>
			</table>
		</s:div>
	</s:form>
</s:div>




<%@ include file="./footer.jsp"%>