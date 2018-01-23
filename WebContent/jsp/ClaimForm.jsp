<%@ include file="./HeaderRelationManager.jsp"%>
<script type="text/javascript">
	function doValidate() {
		var dateOfIntimation = document.forms["ClaimForm"]["dateOfIntimation"].value;
		if (dateOfIntimation == null || dateOfIntimation == "") {
			alert("Date Of Intimation must be filled out");
			return false;
		}
		var claimmantName = document.forms["ClaimForm"]["claimmantName"].value;
		if (claimmantName == null || claimmantName == "") {
			alert("Claimmant Name must be filled out");
			return false;
		}
		var nameOfPortfolioDirector = document.forms["ClaimForm"]["nameOfPortfolioDirector"].value;
		if (nameOfPortfolioDirector == null || nameOfPortfolioDirector == ""
				|| nameOfPortfolioDirector == "--Select--") {
			alert("Name Of Portfolio Director must be filled out");
			return false;
		}
		var address1 = document.forms["ClaimForm"]["address1"].value;
		if (address1 == null || address1 == "") {
			alert("Address For Communication must be filled out");
			return false;
		}
		var nameOfInvestigator = document.forms["ClaimForm"]["nameOfInvestigator"].value;
		if (nameOfInvestigator == null || nameOfInvestigator == ""
				|| nameOfInvestigator == "--Select--") {
			alert("Name Of Investigator must be filled out");
			return false;
		}
		var dateOfAppointmentOfInvestigator = document.forms["ClaimForm"]["dateOfAppointmentOfInvestigator"].value;
		if (dateOfAppointmentOfInvestigator == null
				|| dateOfAppointmentOfInvestigator == "") {
			alert("Date Of Appointment Of Investigator must be filled out");
			return false;
		}
		var area = document.forms["ClaimForm"]["area"].value;
		if (area == null || area == "") {
			alert("Area must be filled out");
			return false;
		}
		var dataEnteredBy = document.forms["ClaimForm"]["dataEnteredBy"].value;
		if (dataEnteredBy == null || dataEnteredBy == "") {
			alert("Data Entered By must be filled out");
			return false;
		}
		var taluka = document.forms["ClaimForm"]["taluka"].value;
		if (taluka == null || taluka == "") {
			alert("Taluka must be filled out");
			return false;
		}
		var scheme = document.forms["ClaimForm"]["scheme"].value;
		if (scheme == null || scheme == "" || scheme == "--Select--") {
			alert("Scheme Name must be filled out");
			return false;
		}
		var district = document.forms["ClaimForm"]["district"].value;
		if (district == null || district == "") {
			alert("District must be filled out");
			return false;
		}
		var typeOfClaim = document.forms["ClaimForm"]["typeOfClaim"].value;
		if (typeOfClaim == null || typeOfClaim == "" || scheme == "--Select--") {
			alert("Type Of Claim must be filled out");
			return false;
		}
		var pincode = document.forms["ClaimForm"]["pincode"].value;
		if (pincode == null || pincode == "") {
			alert("Pincode must be filled out");
			return false;
		} else if (pincode.length != 6) {
			alert("Pincode must have 6 digits.");
			return false;
		}
		var claimIntimationAmount = document.forms["ClaimForm"]["claimIntimationAmount"].value;
		if (claimIntimationAmount == null || claimIntimationAmount == "") {
			alert("Claim Intimation Amount must be filled out");
			return false;
		}
		var landlineNo = document.forms["ClaimForm"]["landlineNo"].value;
		if (landlineNo == null || landlineNo == "") {
			alert("Landline No must be filled out");
			return false;
		} else if (landlineNo.length != 10) {
			alert("Landline No must have 10 digits.");
			return false;
		}
		var mobileNo1 = document.forms["ClaimForm"]["mobileNo1"].value;
		if (mobileNo1 == null || mobileNo1 == "") {
			alert("Mobile No 1 must be filled out");
			return false;
		} else if (mobileNo1.length != 10) {
			alert("Mobile No 1 must have 10 digits.");
			return false;
		}
		var status = document.forms["ClaimForm"]["status"].value;
		if (status == null || status == "" || status == "--Select--") {
			alert("Status must be filled out");
			return false;
		}
		var mobileNo2 = document.forms["ClaimForm"]["mobileNo2"].value;
		if (mobileNo2 != null || mobileNo2 != "") {
			if (mobileNo2.length != 10) {
				alert("Mobile No 2 must have 10 digits.");
				return false;
			}

		}
		var typeOfQuery = document.forms["ClaimForm"]["typeOfQuery"].value;
		if (typeOfQuery == null || typeOfQuery == ""
				|| typeOfQuery == "--Select--") {
			alert("Type Of Query must be filled out");
			return false;
		}

	}
</script>

<div id="wrapper">
	<div id="content">
		<div id="box">
			<s:div>
				<h1>
					<center>Claim Form Details</center>
				</h1>
			</s:div>

			<s:div>
				<s:form action="addClaimDetail" name="ClaimForm" method="POST">
					<s:div>
						<table border='0' align="center"
							style="width: 100%; background-color: white;" cellpadding="4"
							cellspacing="2">
							<tr style="background-color: darkblue">
								<th colspan="4" style="color: white"><b><center>Claim
											Details</center></b></th>
							</tr>

							<tr>
								<td>Claim Id</td>
								<td><s:textfield name="claimId" value="%{claimId}"
										theme="simple" /></td>
								<td>Date of Intimation</td>
								<td><s:textfield name="DateOfIntimation"
										value="%{DateOfIntimation}" readonly="true" theme="simple"
										cssClass="tcal" size="23" /></td>
							</tr>
							<tr>
								<td>Claimant Name</td>
								<td><s:textfield name="claimantName"
										value="%{claimantName}" theme="simple" /></td>
								<td>Name Of Portfolio Director</td>
								<td><s:select name="nameOfPortfolioDirector"
										list="#{'1':'--Select--'}" theme="simple"></s:select></td>
							</tr>
							<tr>
								<td>Address For Communication</td>
								<td><s:textfield name="claimAddress"
										value="%{claimAddress}" theme="simple" /></td>
								<td>Name Of Investigator</td>
								<td><s:select name="namerOfInvestigator"
										list="#{'Nirav':'nirav'}" theme="simple"></s:select></td>
							</tr>
							<tr>
								<td></td>
								<td><s:textfield name="address2" value="%{address2}"
										theme="simple" /></td>
								<td>Date Of Appointment Of Investigator</td>
								<td><s:textfield name="dateOfAppointmentOfInvestigator"
										value="%{dateOfAppointmentOfInvestigator}" readonly="true"
										theme="simple" cssClass="tcal" size="23" /></td>
							</tr>

							<tr>
								<td>Area</td>
								<td><s:textfield name="area" value="%{area}" theme="simple" /></td>
								<td>Data Entered by</td>
								<td><s:textfield name="dataEnteredBy"
										value="%{dataEnteredBy}" theme="simple" /></td>
							</tr>
							<tr>
								<td>Taluka</td>
								<td><s:textfield name="taluka" value="%{taluka}"
										theme="simple" /></td>
								<td>Scheme Name</td>
								<td><s:select name="scheme"
										list="#{'ahmedabad':'ahmedabad'}" theme="simple"></s:select></td>
							</tr>
							<tr>
								<td>District</td>
								<td><s:textfield name="district" value="%{district}"
										theme="simple" /></td>
								<td>Type Of Claim</td>
								<td><s:select name="typeOfClaim"
										list="#{'ahmedabad':'ahmedabad'}" theme="simple"></s:select></td>
							</tr>
							<tr>
								<td>Pin Code</td>
								<td><s:textfield name="pincode" value="%{pincode}"
										theme="simple" /></td>
								<td>Claim Intimation Amount</td>
								<td><s:textfield name="claimIntimationAmount"
										value="%{claimIntimationAmount}" theme="simple" /></td>
							</tr>
							<tr>
								<td>Landline No</td>
								<td><s:textfield name="landLineNo" value="%{landLineNo}"
										theme="simple" /></td>
								<td>Document Upload</td>
								<td><s:file name="documentUpload" theme="simple" /></td>
							</tr>
							<tr>
								<td>Mobile No 1</td>
								<td><s:textfield name="mobileNo1" value="%{mobileNo1}"
										theme="simple" /></td>
								<td>Status</td>
								<td><s:select id="Status" name="Status"
										list="#{'1':'--Select--','2':'Query Raised','3':'Paid','4':'No Claim','5':'Underprocess'}"
										theme="simple"></s:select></td>
							</tr>
							<tr>
								<td>Mobile No 2</td>
								<td><s:textfield name="mobileNo2" value="%{mobileNo2}"
										theme="simple" /></td>
								<td></td>

							</tr>
							<div id="queryRaised" style="display: none;">
								<tr>
									<td>Type Of Query</td>
									<td><s:select name="typeOfQuery" list="#{'LIFE':'LIFE'}"
											theme="simple"></s:select></td>
									<td>Time Left To Submit the Query</td>
									<td><s:textfield name="timeLeftToSubmit"
											value="%{timeLeftToSubmit}" theme="simple" /></td>
								</tr>
								<tr>
									<td>
										<%-- <s:button value="Upload the Latest Query Letter Issued" id="button1" theme="simple" /> --%>
									</td>
									<td>Date Of Query Letter Send</td>
									<td><s:textfield name="dateOfQuerySend"
											value="%{dateOfQuerySend}" readonly="true" theme="simple"
											cssClass="tcal" size="23" /></td>
								</tr>
								<tr>
									<s:textarea label="POD Details" name="podDetail" cols="40"
										rows="10" />
								</tr>
							</div>
							<div id="underprocess" style="display: none;">
								<tr>
									<td>Document Received Date</td>
									<td><s:textfield name="dateOfDocumentRecevied"
											value="%{dateOfDocumentRecevied}" readonly="true"
											theme="simple" cssClass="tcal" size="23" /></td>
								</tr>
								<tr>
									<td>File Pending At</td>
									<td><s:select name="filePendingAt"
											list="#{'ahmedabad':'ahmedabad'}" theme="simple"></s:select></td>
									<td>Status Will Be Updated By</td>
									<td><s:textfield name="statusWillBeUpdatedBy"
											value="%{statusWillBeUpdatedBy}" theme="simple" /></td>
								</tr>
								<tr>
									<s:textarea label="Remarks" name="remarks" cols="40" rows="10" />
								</tr>
							</div>
							<div id="paid" style="display: none;">
								<tr>
									<td>Date Of Issue Of Cheque</td>
									<td><s:textfield name="dateOfIssueCheque"
											value="%{dateOfIssueCheque}" readonly="true" theme="simple"
											cssClass="tcal" size="23" /></td>
								</tr>
								<tr>
									<td>Date Of Dispatch Of Cheque</td>
									<td><s:textfield name="dateOfDispatchCheqe"
											value="%{dateOfDispatchCheqe}" readonly="true" theme="simple"
											cssClass="tcal" size="23" /></td>
								</tr>
								<tr>
									<s:textarea label="Dispatch Address" name="DispatchAddress"
										cols="40" rows="10" />
								</tr>
								<tr>
									<td>POD No</td>
									<td><s:textfield name="podNo" value="%{podNo}"
											theme="simple" /></td>
								</tr>
							</div>
						</table>
						<table border="0" align="center"
							style="background-color: white; width: 100%" cellpadding="4"
							cellspacing="2">
							<tr>
								<td><center>
										<s:submit value="Submit" id="button1" theme="simple"
											onclick="return doValidate();" />
									</center></td>
								<td><center></center></td>
							</tr>
						</table>
					</s:div>
				</s:form>
			</s:div>
		</div>
	</div>
</div>
<%@ include file="./FooterAdmin.jsp"%>