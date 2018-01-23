<%@ include file="./HeaderAdmin.jsp"%>

<s:form method="post" action="editUserByID" id="form">
	<table>

		<thead align="center">
			<td>Update User Detail</td>
		</thead>


		<s:iterator value="list">
		<tr>
			<td>Employee Name</td>
			<td>:</td>
			<td><s:textfield name="userDataShowForm.name"
					value="%{name}" theme="simple" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Username</td>
			<td>:</td>
			<td><s:textfield name="userDataShowForm.username"
					value="%{username}" theme="simple" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Password</td>
			<td>:</td>
			<td><s:textfield name="userDataShowForm.password"
					value="%{password}" theme="simple" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Email</td>
			<td>:</td>
			<td><s:textfield name="userDataShowForm.email"
					value="%{email}" theme="simple" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Designation</td>
			<td>:</td>
			<td><s:select name="userDataShowForm.designation" id="designation"
					list="#{'2':'Corporate Officer', '3':'Zonal Officer', '4':'Regional Managers', '5':'Branch Managers','6':'Relationship Manager'}"
					theme="simple"
					value="%{designation}">

				</s:select></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td>:</td>
			<td><s:textfield name="userDataShowForm.phone"
					value="%{phone}" theme="simple" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Branch Name/Location</td>
			<td>:</td>
			<td><s:textfield name="userDataShowForm.branchName"
					value="%{branchName}" theme="simple" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Reporting Manager</td>
			<td>:</td>
			<td><s:textfield name="userDataShowForm.reportingManager"
					value="%{reportingManager}" theme="simple" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Desk No</td>
			<td>:</td>
			<td><s:textfield name="userDataShowForm.deskNo"
					value="%{deskNo}" theme="simple" size="45"></s:textfield></td>
		</tr>
		
		<tr>
			<td></td>
			<td></td>
			<s:hidden value="%{userDetailID}" name="userDataShowForm.userDetailID"></s:hidden>
			<td><s:submit value="Modify" theme="simple"></s:submit></td>
		</tr>
		</s:iterator>

	</table>
</s:form>
<%@ include file="./FooterAdmin.jsp"%>
