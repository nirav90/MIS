
<%@page import="com.mis.formBean.BusinessDetailForm"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:div cssClass="main">

	<s:form action="editData" method="post" id="form">
		<table align="center" width="100%" border="-1px"
			style="background: white;" cellpadding="4" cellspacing="0">

			<thead align="center" style="background: darkblue; color: white;">
				<td>No.</td>
				<td>Insured Name</td>
				<td>Insureance Compnay Name</td>
				<td>Policy Name</td>
				<td>Relation Manager Name</td>
				<td>Total Brokerage</td>
				<td>Status</td>
				<td>Payment Detail</td>


			</thead>
			<%
				int i = 0;
			%>

			<s:iterator value="businessDetailForms">
				<tr align="left" style="outline-color: black;">
					<td align="center"><%=++i%></td>
					<td><s:property value="insuredName" /></td>
					<td><s:property value="bankName" /></td>
					<td><s:property value="policyName" /></td>
					<td><s:property value="rmName" /></td>
					<td><s:property value="totalBrokarege" /></td>
					<td><s:property value="status" /></td>
					<s:hidden name="policyName" id="policyName" value="%{policyName}" />
					<s:hidden name="clientID" id="clientID" value="%{clientID}" />

					<%-- onclick="doEdit(<s:property value="userDetailID" /> --%>
					<td align="center"><a href="#"
						onclick="doBusinessStatusView(<s:property value="clientID"/>)">see
							more</a></td>



				</tr>

			</s:iterator>

		</table>
		<s:hidden value="" name="h1" id="h1"></s:hidden>
	</s:form>
</s:div>
