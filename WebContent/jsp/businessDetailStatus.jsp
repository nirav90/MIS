<%@ include file="./HeaderAdmin.jsp"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>

<script type="text/javascript">
	function showYesDiv() {

		document.getElementById('No').style.display = 'none';
		document.getElementById('Yes').style.display = 'block';
	}

	function showNoDiv() {

		document.getElementById('Yes').style.display = 'none';
		document.getElementById('No').style.display = 'block';
	}
</script>

<%
	int clientID = Integer.parseInt(request.getParameter("clientID"));
	int size = (Integer) request.getAttribute("size");
%>



<div id="wrapper">
	<div id="content">
		<div id="box">
			<h2>Business Status</h2>
			<%
				if (size > 0)
				{
			%>

			<div id="Yes">
				<h3></h3>
				<s:form action="addBusinessStatus" method="post">
					<table>
						<s:iterator value="businessStatusForms">
							<tr>
								<td>Cheque No:</td>
								<td><s:textfield theme="simple" name="chequeNo"
										value="%{chequeNo}" /></td>
							</tr>

							<tr>
								<td>Cheque Date:</td>
								<td><s:textfield name="chequeDate" readonly="true"
										theme="simple" cssClass="tcal" id="cal" size="20"
										value="%{chequeDate}" /></td>
							</tr>

							<tr>
								<td>Cheque Amount:</td>
								<td><s:textfield theme="simple" name="chequeAmount"
										value="%{chequeAmount}" /></td>
							</tr>

							<tr>
								<td><input type="hidden" value="<%=clientID%>"
									name="clientID"/ ></td>
								<td><s:submit value="ADD" theme="simple" /></td>
							</tr>
						</s:iterator>
					</table>
				</s:form>
			</div>

			<%
				}
				else
				{
			%>
			<div id="Yes">
				<h3></h3>
				<s:form action="addBusinessStatus" method="post">
					<table>
						<tr>
							<td>Cheque No:</td>
							<td><s:textfield theme="simple" name="chequeNo" /></td>
						</tr>

						<tr>
							<td>Cheque Date:</td>
							<td><s:textfield name="chequeDate" readonly="true"
									theme="simple" cssClass="tcal" id="cal" size="20" /></td>
						</tr>

						<tr>
							<td>Cheque Amount:</td>
							<td><s:textfield theme="simple" name="chequeAmount" /></td>
						</tr>

						<tr>
							<td><input type="hidden" value="<%=clientID%>"
								name="clientID"/ ></td>
							<td><s:submit value="ADD" theme="simple" /></td>
						</tr>
					</table>
				</s:form>
			</div>
			<%
				}
			%>

		</div>
	</div>
</div>


<%@ include file="./FooterAdmin.jsp"%>