
<%@ taglib uri="/struts-tags" prefix="s"  %>
<s:div cssClass="main">

<s:form action="editData" method="post" id="form">
	<table align="center" width="100%" border="-1px" style="background: white;" cellpadding="4"  cellspacing="0">

		<thead align="center" style="background: darkblue; color: white;">
			<td>No.</td>
			<td>Policy Name.</td>
			<td>Policy No</td>
			<td>Reference Person</td>
			<td>Insurance Company Name</td>
			<td>Date Of Inward</td>
			<td>Action</td>

		</thead>
		<%
		int i = 0;
		%>

		<s:iterator value="policyDetailForms" >
			<tr  align="left"  style="outline-color: black;">
				<td align="center"><%= ++i %></td>
				<td><s:property value="policyName" /></td>
				<td><s:property value="policyNo" /></td>
				<td><s:property value="referencePerson" /></td>
				<td><s:property value="insuranceCompany" /></td>
				<td><s:property value="DateOfInward"/></td>
				
				<s:hidden name="policyName" id="policyName" value="%{policyName}"/>
				
				
				
				
				<%-- onclick="doEdit(<s:property value="userDetailID" /> --%>
				<td align="center"><a href="#" onclick="doView(<s:property value="clientID"/>)">see more</a></td>
				
			</tr>

		</s:iterator>

	</table>
	<s:hidden value="" name="h1" id="h1"></s:hidden>
	</s:form>
</s:div>
