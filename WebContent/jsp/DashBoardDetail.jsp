<%@ include file="./HeaderRelationManager.jsp"%>
<script>
	function doView(data) {
		document.getElementById("h1").value = data;
		//alert(document.getElementById("h1").value);
		document.getElementById("form").action = "clientPolicyList";
		//alert(document.getElementById("form1").action);
		document.getElementById("form").submit();
	}
</script>
<!-- <div id="top-panel">
            <div id="panel">
                <ul>
					<li><a href="insertPolicyReq.action" class="useradd">New Policy</a></li>
                    
                </ul>
            </div>
      </div>      
 -->
<div id="wrapper">
	<div id="content">
		<div id="box">

			<s:form action="editData" method="post" id="form">

				<h3>Monthly Target</h3>
				<table style="margin: 21px">

					<thead>
						<td>Monthly Target</td>
						<td>Achived Monthly Target</td>
						<td>Remaining Monthly Target</td>
						</td>
						<td>Percentage(%)</td>



					</thead>

					<s:iterator value="list">
						<tr>
							<td><s:property value="monthlyTarget" /></td>
							<td><s:property value="monthlyTargetAchive" /></td>
							<td><s:property value="monthlyTargetRemain" /></td>
							<td><s:property value="percentageOfTargetMonth" /></td>


						</tr>

					</s:iterator>

				</table>


				<h3>Yearly Target</h3>
				<table style="margin: 21px">

					<thead>
						<td>Yearly Target</td>
						<td>Achived Yearly Target</td>
						<td>Remaining Yearly Target</td>
						</td>
						<td>Percentage(%)</td>



					</thead>

					<s:iterator value="list">
						<tr>
							<td><s:property value="yearlyTarget" /></td>
							<td><s:property value="yearlyTargetAchive" /></td>
							<td><s:property value="yearlyTargetRemain" /></td>
							<td><s:property value="percentageOfTargetYear" /></td>


						</tr>

					</s:iterator>

				</table>




			</s:form>
		</div>
	</div>
</div>
<%@ include file="./FooterAdmin.jsp"%>