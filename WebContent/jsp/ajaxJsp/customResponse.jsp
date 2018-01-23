
<%@ taglib uri="/struts-tags" prefix="s"  %>
<s:div cssClass="main">

<s:form action="editData" method="post" id="form1">
	<table align="center" width="100%" border="-1px" style="background: white;" cellpadding="4"  cellspacing="0">

		<thead align="center" style="background: darkblue; color: white;">
			<td>No.</td>
			<td>Insured Name</td>
			<td>Contact Person</td>
			<td>Relation Manager</td>
			<td>Email</td>
			<td>Address</td>
			<td>Mobile No</td>
			<td>Office No</td>
			<td>Fax No</td>
			<td>Pincode</td>
			

		</thead>
		<%
		int i = 0;
		%>

		<s:iterator value="clientDetailForms" >
			<tr  align="left"  style="outline-color: black;">
				<td align="center"><%= ++i %></td>
				<td><s:property value="insuredName" /></td>
				<td><s:property value="contactPerson" /></td>
				<td><s:property value="RmName" /></td>
				<td><s:property value="email" /></td>
				<td><s:property value="address"/></td>
				<td><s:property value="mobileNo"/></td>
				<td><s:property value="officeNo"/></td>
				<td><s:property value="faxNo"/></td>
				<td><s:property value="pincode"/></td>
			
				
				
				
				
			</tr>

		</s:iterator>

	</table>
	<s:hidden value="" name="h1" id="h1"></s:hidden>
	</s:form>
</s:div>
