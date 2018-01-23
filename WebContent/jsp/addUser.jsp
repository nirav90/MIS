<%@ include file="./HeaderAdmin.jsp"%>
<script type="text/javascript">
	function getReportingName() {
		// 		alert("hi");
		var url = "getReportingPerson";
		var designation = document.getElementById("designation").value;
		var queryString = "designation=" + designation + "";
		reqAjax(url, queryString, callbackForReportingName);
	}

	function callbackForReportingName() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				document.getElementById("result").innerHTML = xmlHttp.responseText;
			} else {
				// 				alert("HTTP error " + xmlHttp.status + ": "
				// 						+ xmlHttp.statusText);
			}
		}
	}

	function doValidate() {
		var ename = document.getElementById("ename").value;
		if (ename == null || ename == "") {
			document.getElementById("validate").style.display = 'block';
			document.getElementById("validate").innerHTML = "please provide employee name";
			return false;
		}

		var userName = document.getElementById("userName").value;
		if (userName == null || userName == "") {
			document.getElementById("validate").style.display = 'block';
			document.getElementById("validate").innerHTML = "please provide Username ";
			return false;
		}
		var password = document.getElementById("password").value;
		if (password == null || password == "") {
			document.getElementById("validate").style.display = 'block';
			document.getElementById("validate").innerHTML = "please provide password";
			return false;
		}
		var phone = document.getElementById("phone").value;
		if (phone == null || phone == "") {
			document.getElementById("validate").style.display = 'block';
			document.getElementById("validate").innerHTML = "please provide phone number";
			return false;
		}
		else{
			if(phone.length!=10)
			{
				document.getElementById("validate").style.display = 'block';
				document.getElementById("validate").innerHTML = "please valid phone number";
				return false;
			}
		}

		var deskNo = document.getElementById("deskNo").value;
		if (deskNo == null || deskNo == "") {
			document.getElementById("validate").style.display = 'block';
			document.getElementById("validate").innerHTML = "please provide deskNO";
			return false;
		}
		
		var BranchName = document.getElementById("BranchName").value;
		if (BranchName == null || BranchName == "") {
			document.getElementById("validate").style.display = 'block';
			document.getElementById("validate").innerHTML = "please provide BranchName";
			return false;
		}
		
		
		var email = document.getElementById("email").value;
		if (email == null || email == "") {
			document.getElementById("validate").style.display = 'block';
			document.getElementById("validate").innerHTML = "please provide Email";
			return false;
		}
		else{
			var atpos=email.indexOf("@");
			var dotpos=email.lastIndexOf(".");
			if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
			  {
				document.getElementById("validate").style.display = 'block';
				document.getElementById("validate").innerHTML = "Please Provide valid e-mail address";
			  return false;
			  }
			}
		

	}
</script>

<div id="top-panel">
	<div id="panel">
		<ul>

		</ul>
	</div>
</div>


<s:form method="post" action="addUser" id="form" theme="simple">


	<table>

		<!-- <tr style="background: blue;color: white;">ADD NEW USER</tr> -->


		<tr>
			<td id="validate"
				style="color: #D8000C; background-color: #FFBABA; border-color: #D8000C; border: 2 px; display: none"
				colspan="3"></td>
		</tr>


		<tr>
			<td><b>New User Detail</b></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td>Employee Name</td>
			<td>:</td>
			<td><s:textfield name="addUserForm.name"
					value="%{addUserForm.name}" id="ename" theme="simple" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Username</td>
			<td>:</td>
			<td><s:textfield name="addUserForm.userID"
					value="%{addUserForm.userID}" id="userName" theme="simple"
					size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Password</td>
			<td>:</td>
			<td><s:textfield name="addUserForm.password"
					value="%{addUserForm.password}" theme="simple" id="password"
					size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Email</td>
			<td>:</td>
			<td><s:textfield name="addUserForm.email"
					value="%{addUserForm.email}" theme="simple" id="email" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Designation</td>
			<td>:</td>
			<td><s:select name="addUserForm.designation" id="designation"
					list="#{'2':'Corporate Officer', '3':'Zonal Officer', '4':'Regional Managers', '5':'Branch Managers','6':'Relationship Manager'}"
					theme="simple" value="%{addUserForm.designation}"
					onchange="javascript:getReportingName();">

				</s:select></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td>:</td>
			<td><s:textfield name="addUserForm.phone"
					value="%{addUserForm.phone}" theme="simple" id="phone" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Branch Name/Location</td>
			<td>:</td>
			<td><s:textfield name="addUserForm.branchName" id="BranchName"
					value="%{addUserForm.branchName}" theme="simple" size="45"></s:textfield></td>
		</tr>
		<tr>
			<td>Reporting Manager</td>
			<td>:</td>
			<td id="result"></td>
		</tr>
		<tr>
			<td>Desk No</td>
			<td>:</td>
			<td><s:textfield name="addUserForm.deskNo"
					value="%{addUserForm.deskNo}" theme="simple" size="45" id="deskNo"></s:textfield></td>
		</tr>

		<tr>
			<td></td>
			<td></td>
			<td><s:submit value="Add" theme="simple"></s:submit></td>
		</tr>


	</table>
</s:form>

<%@ include file="./FooterAdmin.jsp"%>