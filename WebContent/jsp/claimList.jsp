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
	document.getElementById("form1").action="viewClaimDetailbyId";
	document.getElementById("form1").submit();
}
</script>

<div id="wrapper">
   <div id="content">
                <div id="box">
<h3>List of claim detail</h3>
	
	
<s:form id="form1">
	<table >

		<thead >
			<td>No.</td>
			<td>Claim Id</td>
			<td>Claimnt Name</td>
			<td>Claim Intimation Amount</td>
			<td>Status Of Claim</td>
			<td>Type Of Claim</td>
			<td>Type Of Query</td>
			
			
			<td colspan="2">Action</td>

		</thead>
		<%
		int i = 0;
		%>

		<s:iterator value="claimForms" var="a" >
			<tr  align="left"  style="outline-color: black;">
				<td align="center"><%= ++i %></td>
				<td><s:property value="claimId" /></td>
				<td><s:property value="claimantName" /></td>
				<td><s:property value="claimIntimationAmount" /></td>
				<td><s:property value="Status" /></td>
				<td><s:property value="typeOfClaim" /></td>
				<td><s:property value="typeOfQuery" /></td>
				
				<s:hidden name="policyName" value="%{policyName}"/>
				<td align="center"><a href="#" onclick="doView(${a.claimIdAuto})">More Detail..</a></td>
				
			</tr>

		</s:iterator>

	</table>
	<s:hidden value="" name="h1" id="h1"></s:hidden>
	</s:form>
</div></div></div>
<%@ include file="./relationManagerFooter.jsp"%>