<%@ include file="./HeaderAdmin.jsp"%>
<script type="text/javascript">
	function doShow() {
		 
// 		var a = document.getElementById("setTarget").value;  
// 		alert(a); 
		document.getElementById("setTarget").style.display = "block";
	}
</script>
<div id="wrapper">
	<div id="content">
		<div id="box">
			<table>
				<tr>
					<td><s:submit value="Set Target" theme="simple"
							onclick="javascript:doShow();" /></td>
				</tr>
			</table>


		</div>
		<div id="setTarget" style="display: none;">
			<s:form action="setTarget" method="post" id="form">

				<table>
					<tr>
						<td>Relation Manager</td>
						<td><sx:autocompleter autoComplete="true" name="target.name"
								id="relationManager" list="RmName" showDownArrow="false" /></td>
					</tr>
					<tr>
						<td>Employee Id</td>
						<td><s:textfield name="target.deskNo" theme="simple" /></td>
					</tr>
					<tr>
						<td>January</td>
						<td><s:textfield name="target.January" theme="simple" /></td>
					</tr>
					<tr>
						<td>February</td>
						<td><s:textfield name="target.February" theme="simple" /></td>
					</tr>
					<tr>
						<td>March</td>
						<td><s:textfield name="target.March" theme="simple" /></td>
					</tr>
					<tr>
						<td>April</td>
						<td><s:textfield name="target.April" theme="simple" /></td>
					</tr>
					<tr>
						<td>May</td>
						<td><s:textfield name="target.May" theme="simple" /></td>
					</tr>
					<tr>
						<td>June</td>
						<td><s:textfield name="target.June" theme="simple" /></td>
					</tr>
					<tr>
						<td>July</td>
						<td><s:textfield name="target.July" theme="simple" /></td>
					</tr>
					<tr>
						<td>August</td>
						<td><s:textfield name="target.August" theme="simple" /></td>
					</tr>
					<tr>
						<td>September</td>
						<td><s:textfield name="target.September" theme="simple" /></td>
					</tr>
					<tr>
						<td>October</td>
						<td><s:textfield name="target.October" theme="simple" /></td>
					</tr>
					<tr>
						<td>November</td>
						<td><s:textfield name="target.November" theme="simple" /></td>
					</tr>
					<tr>
						<td>December</td>
						<td><s:textfield name="target.December" theme="simple" /></td>
					</tr>
					<tr>
						<td>total Anual Target</td>
						<td><s:textfield name="target.targetAmount" theme="simple" /></td>
					</tr>
					<tr>
						<td></td>
						<td><s:submit name="submit" value="Set Target" theme="simple" /></td>
					</tr>
				</table>

			</s:form>
		</div>
	</div>
</div>
<%@ include file="./FooterAdmin.jsp"%>