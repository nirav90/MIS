<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mis.formBean.SumInsuredForm"%>

<%@ include file="./HeaderRelationManager.jsp"%>
<%
	String policy = (String) request.getParameter("policyName");
	int id2 = (Integer) request.getAttribute("clientID");
%>
<script type="text/javascript">



  function demo1() {
	var color = "<%=policy%>";
		var cc = color.trim();
// 		alert("in demo");
// 		alert(cc);

		document.getElementById(cc).style.display = "block";
	}

	function demo() {

		var policyName = "<%=policy%>";
		var id = "<%=id2%>";

	var queryString = "policyName=" + policyName + "&id=" + id + "";
		// 		var url = "./jsp/viewdiv/" + policyName.trim() + ".jsp";
		//document.getElementById('Loading').style.display = 'block';
		reqAjax("getSuminsuredInnerJsp?", queryString, callbackForInsuredName)
	}
	function callbackForInsuredName() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				
				<%
				ArrayList<SumInsuredForm>  sumInsuredForms =  (ArrayList<SumInsuredForm>)request.getAttribute("sumInsuredForms");
				
				%>
				
				document.getElementById("result").style.display = "block";
				document.getElementById("result").innerHTML = xmlHttp.responseText;
			} else {
// 				alert("HTTP error " + xmlHttp.status + ": "
// 						+ xmlHttp.statusText);
			}
		}

	}
	window.onload = demo;
</script>


<div id="wrapper">
	<div id="content">
		<div id="box">
			<s:div>
				<h1>
					<center>Burglary Insurance</center>
				</h1>
			</s:div>
			<s:div>
				<s:form action="editPolicyDetail" method="POST">
					<input type="hidden" name="policyName" value="<%=policy%>" />
					<s:div>
						<table border='0' align="center"
							style="width: 100%; background-color: white;">
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
										<td colspan="2"><s:label
												name="clientDetailForm.insuredName" value="%{insuredName}"
												id="client" theme="simple" /> <%-- <sx:autocompleter name="insuredName" autoComplete="true"
							id="auto" list="clientList" value="%{insuredName}" />
 --%></td>
										<td colspan="2">Type of Policy:</td>
										<td colspan="2"><s:label name="policyName"
												value="%{policyName}" theme="simple" /> <%-- <s:label
							name="policyDetailForm.policyName"
							value="%{policyDetailForm.policyName}" theme="simple" /> --%></td>
									</tr>
									<tr>
										<td colspan="2">Address of Communication:</td>
										<td colspan="2"><s:label name="clientDetailForm.address"
												value="%{address}" theme="simple" />
										<td colspan="2">Name of Insurance Company:</td>
										<td colspan="2"><s:label
												name="policyDetailForm.insuranceCompany"
												value="%{insuranceCompany}" theme="simple" /></td>
									</tr>
									<tr>
										<td colspan="2">Pincode:</td>
										<td colspan="2"><s:label name="clientDetailForm.pincode"
												value="%{pincode}" theme="simple" />
										<td colspan="2">Branch / DO of Insurance Company:</td>
										<td colspan="2"><s:label name="policyDetailForm.branch"
												value="%{branch}" theme="simple" /></td>
									</tr>
									<tr>
										<td colspan="2">Name of contact Person:</td>
										<td colspan="2"><s:label
												name="clientDetailForm.contactPerson"
												value="%{contactPerson}" theme="simple" />
										<td colspan="2">Reference Person Name:</td>
										<td colspan="2"><s:label
												name="policyDetailForm.referencePerson"
												value="%{referencePerson}" theme="simple" /></td>
									</tr>
									<tr>

										<td colspan="2">Office No:</td>
										<td colspan="2"><s:label name="clientDetailForm.officeNo"
												value="%{officeNo}" theme="simple" />
										<td colspan="2">Date of Inward:</td>
										<td colspan="2"><s:label
												name="policyDetailForm.DateOfInward" value="%{DateOfInward}"
												theme="simple" /></td>
									</tr>
									<tr>

										<td colspan="2">Fax No:</td>
										<td colspan="2"><s:label name="clientDetailForm.faxNo"
												value="%{faxNo}" theme="simple" />
										<td colspan="2">Risk Start Date:</td>
										<td colspan="2"><s:label
												name="policyDetailForm.riskStartDate"
												value="%{riskStartDate}" theme="simple" /></td>
									</tr>
									<tr>
										<td colspan="2">Mobile No:</td>
										<td colspan="2"><s:label name="clientDetailForm.mobileNo"
												value="%{mobileNo}" theme="simple" />
										<td colspan="2">Risk End Date:</td>
										<td colspan="2"><s:label
												name="policyDetailForm.riskEndDate" value="%{riskEndDate}"
												theme="simple" /></td>
									</tr>
									<tr>
										<td colspan="2">RM Name:</td>
										<td colspan="2"><s:label name="clientDetailForm.RmName"
												value="%{RmName}" theme="simple" /></td>

										<td colspan="2">Policy No / Receipt No:</td>
										<td colspan="2"><s:label name="policyDetailForm.policyNo"
												value="%{policyNo}" theme="simple" />
									</tr>
									<tr>
										<td colspan="2">Email Id:</td>
										<td colspan="2"><s:label name="clientDetailForm.email"
												value="%{email}" theme="simple" />
										<td colspan="2">Expiring policy no:</td>
										<td colspan="2"><s:label
												name="policyDetailForm.ExpirypolicyNo"
												value="%{ExpirypolicyNo}" theme="simple" />
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
										<td><s:label name="policyDetailForm.riskLocation"
												value="%{riskLocation}" theme="simple" /></td>
										<td colspan="3"><s:label
												name="policyDetailForm.riskAddress" value="%{riskAddress}"
												theme="simple" /></td>
										<td><s:label name="policyDetailForm.city" value="%{city}"
												theme="simple" /></td>
										<td><s:label name="policyDetailForm.state"
												value="%{state}" theme="simple" /></td>
										<td><s:label name="policyDetailForm.country"
												value="%{country}" theme="simple" /></td>
										<td><s:label name="policyDetailForm.riskPincode"
												value="%{riskPincode}" theme="simple" /></td>
									</tr>

								</s:iterator>
							</s:iterator>

						</table>
						<div style="background: green; widows: 100px"
							onclick="javascript:demo()"></div>

						<table style="width: 100%; background-color: white;">
							<tr>
								<td>
									<%-- 								<s:iterator value="sumInsuredForms"> --%>
									<div id="result"></div> <%-- 										<jsp:include page="div_view_part_one.jsp" /> --%>

									<%-- 										<jsp:include page="div_view_part_two.jsp" /> --%>

									<%-- 										<jsp:include page="div_view_part_three.jsp" /> --%>

									<%-- 									</s:iterator> --%>
								</td>
							</tr>
						</table>
						<table style="width: 100%; background-color: white;">
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
									<td colspan="4"><s:label name="insuranceCompanyName"
											list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
											value="%{insuranceCompanyName}" theme="simple">
										</s:label> <!-- <select name="insurance_company_name">
							<option>Bharti Axa General Insurance Co</option>
							<option>TATA Aig General Insurance Co Ltd</option>
							<option>HDFC Ergo General Insurance Co Ltd</option>
							<option>BAJAJ Alliance General Insurance Co Ltd</option>
					</select> --></td>
									<td colspan="2"><s:label name="percentage" theme="simple"
											value="%{percentage}" onchange="GetAmount()" /></td>
									<td colspan="2"><s:label name="amount" theme="simple"
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
									<td colspan="3"><s:label name="NameOfBank"
											value="%{NameOfBank}"
											list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
											theme="simple">
										</s:label></td>
									<td></td>
									<td colspan="2"><s:label name="city" value="%{city}"
											list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
											theme="simple">
										</s:label></td>
									<td colspan="3"><s:label name="Branch" value="%{Branch}"
											list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
											theme="simple">

										</s:label></td>
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

									<td colspan="4"><s:label name="CompanyName"
											list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
											theme="simple" value="%{CompanyName}">
										</s:label></td>
									<td colspan="4"><s:label name="shareOfCompany"
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
									<td colspan="2"><s:label name="modeOfPayment"
											list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
											theme="simple" value="%{modeOfPayment}">
										</s:label></td>


									<td colspan="3"><s:label name="bankName"
											list="#{'1':'Bharti Axa General Insurance Co', '2':'Zonal Officer', '3':'Regional Managers', '4':'Branch Managers','5':'Relationship Manager'}"
											theme="simple" value="%{bankName}">
										</s:label></td>
									<td><s:label value="%{chequeOrDDNo}" name="chequeOrDDNo"
											theme="simple" /></td>

									<td><s:label value="%{chequeOrDDDate}"
											name="chequeOrDDDate" theme="simple" /></td>

									<td><s:label value="%{chequeOrDDAmount}"
											name="chequeOrDDAmount" theme="simple" /></td>
								</tr>



							</s:iterator>
						</table>
					</s:div>
					<%int id1 = (Integer) request.getAttribute("clientID");
			request.setAttribute("clientID", id1);%>

					<s:div>
						<table border="0" align="center">
							<tr>

								<input type="hidden" value="<%=id1%>" name="h1">
								<td><center></center></td>
								<td></td>
							</tr>
						</table>
					</s:div>
				</s:form>
			</s:div>

		</div>
	</div>
</div>


<%@ include file="./footer.jsp"%>