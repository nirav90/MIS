<%@ include file="./HeaderRelationManager.jsp"%>
<script>
function doEdit(data)
{
	document.getElementById("h1").value=data;
	document.getElementById("form1").action="editUser";
	document.getElementById("form1").submit();
}
function doView(data)
{
	document.getElementById("h1").value=data;
	document.getElementById("form1").action="viewPolicyDetail";
	document.getElementById("form1").submit();
}
</script>

<div id="wrapper">
   <div id="content">
                <div id="box">
<h3>List of policy detail</h3>
	
	<% 
	
	int clientID=(Integer)request.getAttribute("clientID");
	
	
	%>
<s:form id="form1">
	<table >

		<thead >
			<td>No.</td>
			<td>Policy Name</td>
			<td>Insurance Company Name</td>
			<td>Date Of Inward</td>
			<td>Branch</td>
			<td>Risk Start Date</td>
			<td>Risk End Date</td>
			
			
			<td colspan="2">Action</td>

		</thead>
		<%
		int i = 0;
		%>

		<s:iterator value="list" >
			<tr  align="left"  style="outline-color: black;">
				<td align="center"><%= ++i %></td>
				<td><s:property value="policyName" /></td>
				<td><s:property value="insuranceCompany" /></td>
				<td><s:property value="DateOfInward" /></td>
				<td><s:property value="branch" /></td>
				<td><s:property value="riskStartDate" /></td>
				<td><s:property value="riskEndDate" /></td>
				
				<s:hidden name="policyName" value="%{policyName}"/>
				<td align="center"><a href="#" onclick="doView(<%=clientID%>)">More Detail..</a></td>
				
			</tr>

		</s:iterator>

	</table>
	<s:hidden value="" name="h1" id="h1"></s:hidden>
	</s:form>
</div></div></div>
<%@ include file="./relationManagerFooter.jsp"%>