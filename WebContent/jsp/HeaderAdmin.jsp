<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dashboard - Admin Template</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/theme1.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<sx:head />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/tcal.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/tcal.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/ajax.js"></script>
<%-- <script type="text/javascript">
	var StyleFile = "theme" + document.cookie.charAt(6) + ".css";
	document
			.writeln('<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/' + StyleFile + '">');
</script> --%>
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="css/ie-sucks.css" />
<![endif]-->

<style type="text/css" title="currentStyle">
@import "../resource/css/demo_table_jui.css";

@import "../resource/css/jquery-ui-1.9.2.custom.min.css";
</style>
<style>
.table-container {
	width: 800px;
}

tr.odd {
	background: #EDE4D4 !important;
}

tr.odd td.sorting_1 {
	background: #EDE4D4 !important;
}

tr.even td.sorting_1 {
	background: #fff !important;
}
</style>

</head>
<body>
	<div id="container">
		<div id="header">

			<img src="${pageContext.request.contextPath}/img/in.jpg" />
			<h2>&nbsp&nbsp&nbsp Management Information System</h2>




			<div id="topmenu">


				<div style="float: right; position: absolute; padding-left: 1240px">
					<%-- 				<img src="${pageContext.request.contextPath}/img/in.jpg" /> --%>
					<ul id="menu">
						<li class="current"><a href="logOut.action"><img
								src="${pageContext.request.contextPath}/img/log.png"
								style="padding-right: 6px" />Sign out</a></li>
					</ul>
				</div>
				<ul id="menu">
					<li class="current"><a href="showUserList.action">Home</a></li>
					<li class="current"><a href="showUserList.action">Users</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/jsp/addUser.jsp">Add
									User</a></li>
							<li><a href="showUserList.action">View User</a></li>
						</ul></li>
					<li class="current"><a href="businessDashBoard.action">Accounts</a></li>
					<li class="current"><a
						href="reportDashBoard.action">Report</a></li>
					<li class="current"><a href="settingAction">Settings</a></li>

				</ul>
			</div>


		</div>