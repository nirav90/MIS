<%@ include file="./HeaderRelationManager.jsp"%>
<script>
	function doView(data, policyName) {

		document.getElementById("h1").value = data;
		var queryString = "policyName=" + policyName;
		document.getElementById("form1").action = "viewPolicyDetail?"
				+ queryString;
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
			<h3>List of Client detail</h3>
			<s:form action="editData" method="post" id="form1">
				<table>

					<thead>
						<td>No.</td>
						<td>Client Name</td>
						<td>Policy Name</td>
						<td>Insurance Comapny Name</td>
						<td>Date Of Inward</td>
						<td>Total Sum Insured</td>
						<td>Total Brokerage</td>

						<td colspan="2" align="center">Action</td>

					</thead>
					<%
						int i = 0;
					%>

					<s:iterator value="clientList">
						<tr>
							<td align="center"><%=++i%></td>
							<td><s:property value="insuredName" /></td>
							<td><s:property value="policyName" /></td>
							<td><s:property value="insuranceComapnyName" /></td>
							<td><s:property value="dateOfInward" /></td>
							<td><s:property value="totalSuminsured" /></td>
							<td><s:property value="totalBrokerage" /></td>


							<td><a href="#" style="cursor: pointer;"
								onclick="doView('${clientID}','${policyName}');">View</a></td>
							<td><a href="#" style="cursor: pointer;">Edit</a></td>
								
	
						</tr>

					</s:iterator>

				</table>
				<s:hidden value="" name="h1" id="h1"></s:hidden>
			</s:form>
		</div>
	</div>
</div>
<%@ include file="./FooterAdmin.jsp"%>