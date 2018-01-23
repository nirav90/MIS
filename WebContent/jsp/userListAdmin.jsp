<%@ include file="./HeaderAdmin.jsp"%>


<script type="text/javascript">
function doEdit(data)
{
	document.getElementById("h1").value=data;
// 	alert(document.getElementById("h1").value);
	document.getElementById("form1").action="editUser";
// 	alert(document.getElementById("form1").action);
	document.getElementById("form1").submit();
}
function doDelete(data)
{
	document.getElementById("h1").value=data;
	document.getElementById("form1").action="deleteUserByID";
	var r=confirm("Are You Sure You Want To Delete This User ? ");
	if (r==true)
	  {
		document.getElementById("form1").submit();
	  }
	else
	  {

	  }
}
</script>
<!-- <div id="top-panel"> -->
<!-- 	<div id="panel"> -->
<!-- 		<ul> -->
			
<!-- 		</ul> -->
<!-- 	</div> -->
<!-- </div> -->

<div id="wrapper">
	<div id="content">
		<div id="box">
			<h3>Users</h3>
			<s:form action="editData" method="post" id="form1">
				<table width="100%">
					<thead>
						<tr>
							<td>No.</td>
							<td>Desk No.</td>
							<td>Name</td>
							<td>Email</td>
							<td>Branch Name / Location</td>
							<td>Reporting Manager</td>
							<td>Phone</td>
							<td colspan="2">Action</td>
						</tr>
					</thead>
					<tbody>
						<%
							int i = 0;
						%>

						<s:iterator value="list">
							<tr align="left" style="outline-color: black;">
								<td align="center"><%=++i%></td>
								<td><s:property value="deskNo" /></td>
								<td><s:property value="name" /></td>
								<td><s:property value="email" /></td>
								<td><s:property value="branchName" /></td>
								<td><s:property value="reportingManager" /></td>
								<td><s:property value="phone" /></td>


								<td align="center"><a href="#"
									onclick="doEdit(<s:property value="userDetailID" />)">Edit</a></td>
								<td align="center"><a href="#"
									onclick="doDelete(<s:property value="userDetailID" />)">Delete</a></td>
							</tr>

						</s:iterator>

					</tbody>
				</table>
		</div>
		<br />


		<s:hidden value="" name="h1" id="h1"></s:hidden>
		</s:form>

	</div>

</div>
</div>
<%@ include file="./FooterAdmin.jsp"%>