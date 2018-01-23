<%@ include file="./HeaderAdmin.jsp"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<script type="text/javascript">
	function doView(data) {
		document.getElementById("h1").value = data;
		//alert(document.getElementById("h1").value);
		document.getElementById("form").action = "viewPolicyDetail?policyName="
				+ document.getElementById("policyName").value;
		// 		alert(document.getElementById("form").action);
		document.getElementById("form").submit();
	}

	function doBusinessStatusView(data) {
		document.getElementById("h1").value = data;
		//alert(document.getElementById("h1").value);
		document.getElementById("form").action = "viewBusinessStatus?clientID="
				+ data;
		// 		alert(document.getElementById("form").action);
		document.getElementById("form").submit();
	}
	
	
	var searchID;
	function search() {
		var search = document.getElementById("search").value.trim();
		//	alert(search);
		var l = document.getElementsByClassName('t1');
		for ( var iteam = 0; iteam < l.length; iteam++) {
			l[iteam].style.display = "none";
		}
		document.getElementById(search).style.display = "block";
		document.getElementById("result").style.display = "none";
	}

	/* ajax code start for  date of inward */

	function makeRequest() {
		var s = document.getElementById("startDateInward").value.trim();
		var s1 = document.getElementById("endDateInward").value.trim();
		var queryString = "startDate=" + s + "&endDate=" + s1 + "";
		document.getElementById('Loading').style.display = 'block';
		reqAjax("searchByDate", queryString, callback)
	}
	function callback() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				document.getElementById("result").style.display = "block";
				document.getElementById("result").innerHTML = xmlHttp.responseText;
				document.getElementById('Loading').style.display = 'none';
			} else {
				// 				alert("HTTP error " + xmlHttp.status + ": "
				// 						+ xmlHttp.statusText);
			}
		}
	}

	function reportByDateOfInward() {
		var s = document.getElementById("startDate").value.trim();
		var s1 = document.getElementById("endDate").value.trim();
		var queryString = "startDate=" + s + "&endDate=" + s1 + "";
		document.getElementById("form1").action = "generateReportByDateOfInward?"
				+ queryString;
		document.getElementById("form1").submit();
	}

	/* ajax code start for insuredName */

	function getInsuredName() {
		var autoCompleter = dojo.widget.byId("insuredName");
		var value = autoCompleter.getSelectedValue();
		// 		alert(value);
		var queryString = "insuredName=" + value + "";
		document.getElementById('Loading').style.display = 'block';
		reqAjax("searchByInsuredName", queryString, callbackForInsuredName);
	}
	function callbackForInsuredName() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				document.getElementById("result").style.display = "block";
				document.getElementById("result").innerHTML = xmlHttp.responseText;
				document.getElementById('Loading').style.display = 'none';
			} else {
				// 				alert("HTTP error " + xmlHttp.status + ": "
				// 						+ xmlHttp.statusText);
			}
		}
	}
	function reportByInsuredName() {
		var autoCompleter = dojo.widget.byId("insuredName");
		var value = autoCompleter.getSelectedValue();
		// 		alert(value);
		var queryString = "insuredName=" + value + "";
		document.getElementById("form1").action = "generateReportByInsuredName?"
				+ queryString;
		document.getElementById("form1").submit();
	}
	/* ajax code start for relation manager  */

	function searchByRelationManger() {
		var autoCompleter = dojo.widget.byId("relationManager");
		var value = autoCompleter.getSelectedValue();
		// 		alert(value);
		var queryString = "relationManager=" + value + "";
		document.getElementById('Loading').style.display = 'block';
		reqAjax("searchByRelationManager", queryString,
				callbackForRelationManger);
	}
	function callbackForRelationManger() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				document.getElementById("result").style.display = "block";
				document.getElementById("result").innerHTML = xmlHttp.responseText;
				document.getElementById('Loading').style.display = 'none';
			} else {
				// 				alert("HTTP error " + xmlHttp.status + ": "
				// 						+ xmlHttp.statusText);
			}
		}
	}

	function reportByRelationManager() {
		var autoCompleter = dojo.widget.byId("relationManager");
		var value = autoCompleter.getSelectedValue();
		// 		alert(value);
		var queryString = "relationManager=" + value + "";
		document.getElementById("form1").action = "generateReportByrelationManager?"
				+ queryString;
		document.getElementById("form1").submit();
	}

	/* ajax code start for insured Company  */

	function searchByInsuredCompany() {
		var autoCompleter = dojo.widget.byId("InsuranceCompany");
		var value = autoCompleter.getSelectedValue();
		// 		alert(value);
		var queryString = "InsuranceCompany=" + value + "";
		document.getElementById('Loading').style.display = 'block';
		reqAjax("searchByInsuranceCompany", queryString,
				callbackForInsuranceCompany);
	}
	function callbackForInsuranceCompany() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				document.getElementById("result").style.display = "block";
				document.getElementById("result").innerHTML = xmlHttp.responseText;
				document.getElementById('Loading').style.display = 'none';
			} else {
				// 				alert("HTTP error " + xmlHttp.status + ": "
				// 						+ xmlHttp.statusText);
			}
		}
	}
	function reportByInsuranceCompany() {
		var autoCompleter = dojo.widget.byId("InsuranceCompany");
		var value = autoCompleter.getSelectedValue();
		// 		alert(value);
		var queryString = "InsuranceCompany=" + value + "";
		document.getElementById("form1").action = "generateReportByInsuranceCompany?"
				+ queryString;
		document.getElementById("form1").submit();
	}

	/* ajax code start for policy start date  */

	function searchByPolicyStartDate(url) {
		var s = document.getElementById("policyStartDate").value.trim();
		var s1 = document.getElementById("policyEndDate").value.trim();
		var queryString = "startDate=" + s + "&endDate=" + s1 + "";
		document.getElementById('Loading').style.display = 'block';
		reqAjax(url, queryString, callbackSearchByPolicyDate);
	}
	function callbackSearchByPolicyDate() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				document.getElementById("result").style.display = "block";
				document.getElementById("result").innerHTML = xmlHttp.responseText;
				document.getElementById('Loading').style.display = 'none';
			} else {
				// 				alert("HTTP error " + xmlHttp.status + ": "
				// 						+ xmlHttp.statusText);
			}
		}
	}
	function reportByPolicyStartDate() {
		// 		alert("in call");
		var s = document.getElementById("policyStartDate").value.trim();
		var s1 = document.getElementById("policyEndDate").value.trim();
		var queryString = "startDate=" + s + "&endDate=" + s1 + "";
		document.getElementById("form2").action = "generateReportByPolicyStartDate?"
				+ queryString;
		// 		alert(document.getElementById("form2").action);
		document.getElementById("form2").submit();
	}

	/* ajax code start for policy end date  */

	function searchByPolicyEndDate(url) {
		var s = document.getElementById("PolicyEndStartDate").value.trim();
		var s1 = document.getElementById("PolicyEndEndDate").value.trim();
		var queryString = "startDate=" + s + "&endDate=" + s1 + "";
		document.getElementById('Loading').style.display = 'block';
		reqAjax(url, queryString, callbackSearchByPolicyEndDate);
	}
	function callbackSearchByPolicyEndDate() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				document.getElementById("result").style.display = "block";
				document.getElementById("result").innerHTML = xmlHttp.responseText;
				document.getElementById('Loading').style.display = 'none';
			} else {
				// 				alert("HTTP error " + xmlHttp.status + ": "
				// 						+ xmlHttp.statusText);
			}
		}
	}
	function reportByPolicyEndDate() {
		// 		alert("in call");
		var s = document.getElementById("PolicyEndStartDate").value.trim();
		var s1 = document.getElementById("PolicyEndEndDate").value.trim();
		var queryString = "startDate=" + s + "&endDate=" + s1 + "";
		document.getElementById("form2").action = "generateReportByPolicyEndDate?"
				+ queryString;
		// 		alert(document.getElementById("form2").action);
		document.getElementById("form2").submit();
	}
	/* ajax code start for customSearch */

	function customSearch(url) {
		var insuredNameAuto = dojo.widget.byId("insuredNameCustom");
		var insuredNameAutoValue = insuredNameAuto.getSelectedValue();
		var relationManagerAuto = dojo.widget.byId("relationManagerCustom");
		var relationManagerAutoValue = relationManagerAuto.getSelectedValue();
		var insuranceCompanyAuto = dojo.widget.byId("insuredCompanyCustom");
		var insuranceCompanyAutoValue = insuranceCompanyAuto.getSelectedValue();
		var dateOfInward = document.getElementById("DateOfInwardCustom").value
				.trim();
		var dateOfStartPolicy = document
				.getElementById("PolicyStartDateCustom").value.trim();
		var dateOfEndPolicy = document.getElementById("PolicyEndDateCustom").value
				.trim();
		var queryString = "insuredNameCustom=" + insuredNameAutoValue
				+ "&relationManagerCustom=" + relationManagerAutoValue
				+ "&insuredCompanyCustom=" + insuranceCompanyAutoValue
				+ "&PolicyStartDateCustom=" + dateOfStartPolicy
				+ "&DateOfInwardCustom=" + dateOfInward
				+ "&PolicyEndDateCustom=" + dateOfEndPolicy + "";
		// 		alert(queryString);
				document.getElementById('Loading').style.display = 'block';
		reqAjax(url, queryString, customSearchCallback);
	}

	function customSearchCallback() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				document.getElementById("result").style.display = "block";
				document.getElementById("result").innerHTML = xmlHttp.responseText;
				document.getElementById('Loading').style.display = 'none';
			} else {
				// 				alert("HTTP error " + xmlHttp.status + ": "
				// 						+ xmlHttp.statusText);
			}
		}
	}

	function reportByCustomSearch() {
		var insuredNameAuto = dojo.widget.byId("insuredNameCustom");
		var insuredNameAutoValue = insuredNameAuto.getSelectedValue();
		var relationManagerAuto = dojo.widget.byId("relationManagerCustom");
		var relationManagerAutoValue = relationManagerAuto.getSelectedValue();
		var insuranceCompanyAuto = dojo.widget.byId("insuredCompanyCustom");
		var insuranceCompanyAutoValue = insuranceCompanyAuto.getSelectedValue();
		var dateOfInward = document.getElementById("DateOfInwardCustom").value
				.trim();
		var dateOfStartPolicy = document
				.getElementById("PolicyStartDateCustom").value.trim();
		var dateOfEndPolicy = document.getElementById("PolicyEndDateCustom").value
				.trim();
		var queryString = "insuredNameCustom=" + insuredNameAutoValue
				+ "&relationManagerCustom=" + relationManagerAutoValue
				+ "&insuredCompanyCustom=" + insuranceCompanyAutoValue
				+ "&PolicyStartDateCustom=" + dateOfStartPolicy
				+ "&DateOfInwardCustom=" + dateOfInward
				+ "&PolicyEndDateCustom=" + dateOfEndPolicy + "";
		// 		alert("indddd" + queryString);
		document.getElementById("form1").action = "generateReportByCustom?"
				+ queryString;
		// 		alert(document.getElementById("form1").action);
		document.getElementById("form1").submit();
	}
</script>
<div id="top-panel">
	<div id="panel">
		<ul>

		</ul>
	</div>
</div>



<div id="wrapper">
	<div id="content">
		<div id="box">

			<div style="min-height: 100px">
				<s:div>
					<table>
						<tr>
							<td>Search By:</td>
							<td><s:select id="search"
									list="#{'select':'----select----','Date of Inward':'Date of Inward','Relation Manager':'Relation Manager','Insured Name':'Insured Name','Insurance Company':'Insurance Company','Policy Start Date':'Policy Start Date','Policy End Date':'Policy End Date','custom Search':'custom Search'}"
									theme="simple" onchange="javascript:search();" /></td>
						</tr>
					</table>
				</s:div>
				<div id="select" class="t1"></div>

				<div id="Date of Inward" class="t1">
					<table style="width: 100%">
						<tr>
							<%-- 							<s:form id="form1"> --%>
							<td>From:</td>
							<td><s:textfield id="startDateInward" name="startDate"
									theme="simple" cssClass="tcal">
								</s:textfield></td>
							<td>To:</td>
							<td><s:textfield id="endDateInward" name="endDate"
									theme="simple" cssClass="tcal">
								</s:textfield></td>
							<td><s:submit onclick="makeRequest()" theme="simple"
									value="GOs" /></td>
							<%-- 							</s:	form> --%>
							<%-- <td><s:submit value="Go" cssStyle="margin: 10px"
									onclick="javascript:makeRequest(\"searchByDate\")"
									theme="simple"></s:submit></td>
 --%>
						</tr>

					</table>

					<div></div>

				</div>


				<div id="Relation Manager" class="t1">
					<table>
						<tr>
							<td>Name:</td>
							<td><sx:autocompleter autoComplete="true"
									id="relationManager" list="RmName" showDownArrow="false" /></td>
							<td><s:submit value="GO"
									onclick="javascript:searchByRelationManger()" theme="simple" /></td>
						</tr>
					</table>
				</div>
				<div id="Insured Name" class="t1">

					<table>
						<tr>
							<td>Insured Name :</td>
							<td><sx:autocompleter autoComplete="true" id="insuredName"
									list="insuredName" showDownArrow="false" /></td>
							<td><s:submit value="GO"
									onclick="javascript:getInsuredName()" theme="simple" /></td>
						</tr>
					</table>
				</div>
				<div id="Insurance Company" class="t1">
					<table>
						<tr>
							<td>Name:</td>
							<td><sx:autocompleter id="InsuranceCompany"
									autoComplete="true" list="InsuranceCompany"
									showDownArrow="false" /></td>
							<td><s:submit value="GO"
									onclick="javascript:searchByInsuredCompany()" theme="simple" /></td>
						</tr>
					</table>
				</div>
				<div id="Policy Start Date" class="t1">
					<table>
						<tr>
							<td>From:</td>
							<td><s:textfield id="policyStartDate" theme="simple"
									cssClass="tcal">
								</s:textfield></td>
							<td>To:</td>
							<td><s:textfield id="policyEndDate" theme="simple"
									cssClass="tcal">
								</s:textfield></td>
							<td><s:submit value="GO"
									onclick="javascript:searchByPolicyStartDate(\"searchByPolicyStartDate\")"
									theme="simple" /></td>
						</tr>
						<%-- <tr>
							<td><s:submit value="Go"
									onclick="javascript:searchByPolicyStartDate(\"searchByPolicyStartDate\")"
									theme="simple" /></td>

						</tr> --%>
					</table>
				</div>
				<div id="Policy End Date" class="t1">
					<table>
						<tr>
							<td>From:</td>
							<td><s:textfield id="PolicyEndStartDate" theme="simple"
									cssClass="tcal">
								</s:textfield></td>
							<td>To:</td>
							<td><s:textfield id="PolicyEndEndDate" theme="simple"
									cssClass="tcal">
								</s:textfield></td>
							<td><s:submit value="GO"
									onclick="javascript:searchByPolicyEndDate(\"searchByPolicyStartDate\")"
									theme="simple" /></td>
						</tr>
					</table>
				</div>
				<div id="custom Search" class="t1">
					<table>
						<tr>
							<td>Date Of Inward</td>
							<td><s:textfield id="DateOfInwardCustom" theme="simple"
									cssClass="tcal">
								</s:textfield></td>
						</tr>
						<tr>
							<td>Insured Name</td>
							<td><sx:autocompleter name="insuredNameCustom"
									autoComplete="true" id="insuredNameCustom" list="insuredName"
									showDownArrow="false" /></td>

						</tr>
						<tr>
							<td>Relation Manager</td>
							<td><sx:autocompleter name="relationManagerCustom"
									autoComplete="true" id="relationManagerCustom" list="RmName"
									showDownArrow="false" /></td>

						</tr>
						<tr>
							<td>Insurance Company</td>
							<td><sx:autocompleter name="insuredCompanyCustom"
									autoComplete="true" id="insuredCompanyCustom"
									list="InsuranceCompany" showDownArrow="false" /></td>

						</tr>
						<tr>
							<td>Policy Start Date</td>
							<td><s:textfield id="PolicyStartDateCustom" theme="simple"
									cssClass="tcal">
								</s:textfield></td>

						</tr>
						<tr>
							<td>Policy End Date</td>
							<td><s:textfield id="PolicyEndDateCustom" theme="simple"
									cssClass="tcal">
								</s:textfield></td>

						</tr>

						<tr>
							<td></td>
							<td><s:submit value="GO"
									onclick="javascript:customSearch(\"searchByCustom\")"
									theme="simple" /></td>

						</tr>


					</table>
				</div>

			</div>
			<div id="result"></div>

			<div id="Loading" style="display: none; margin-bottom: 10px;">

				<center>
					Please wait &nbsp&nbsp&nbsp <img
						src="./img/ajax-loaderBusinessPage.gif" />
				</center>

			</div>



			<!-- 			<div> -->
			<!-- 				<table> -->
			<!-- 					<tr align="center" style="background: darkblue; color: white;"> -->
			<!-- 						<td>No</td> -->
			<!-- 						<td>Insured Name</td> -->
			<!-- 						<td>Policy Name</td> -->
			<!-- 						<td>Total Brokerage</td> -->
			<!-- 						<td>Status</td> -->
			<!-- 					</tr> -->

			<%-- 					<% --%>
			<!-- // 						int i = 0; -->
			<%-- 					%> --%>

			<%-- 					<s:iterator value="businessDetailForms"> --%>
			<!-- 						<tr> -->
			<%-- 							<td align="center"><%=++i%></td> --%>
			<%-- 							<td><s:property value="insuredName" /></td> --%>
			<%-- 							<td><s:property value="policyName" /></td> --%>
			<%-- 							<td><s:property value="totalBrokarege" /></td> --%>

			<%-- 							<s:hidden name="policyName" id="policyName" value="%{policyName}" /> --%>




			<%-- 							onclick="doEdit(<s:property value="userDetailID" /> --%>
			<!-- 							<td align="center"><a href="#" -->
			<%-- 								onclick="doView(<s:property value="clientID"/>)">see more</a></td> --%>

			<!-- 						</tr> -->

			<%-- 					</s:iterator> --%>
			<!-- 				</table> -->
			<!-- 			</div> -->

		</div>
	</div>
</div>


<%@ include file="./FooterAdmin.jsp"%>