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
<%-- <script>
	var StyleFile = "theme" + document.cookie.charAt(6) + ".css";
	document
			.writeln('<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/' + StyleFile + '">');
</script>
 --%>
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="css/ie-sucks.css" />
<![endif]-->
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="topmenu">

				<img src="${pageContext.request.contextPath}/img/in.jpg" />
				<h2>Management Information System</h2>

				<div style="float: right; position: absolute; padding-left: 1240px">
					<%-- 				<img src="${pageContext.request.contextPath}/img/in.jpg" /> --%>
					<ul id="menu">
						<li class="current"><a href="logOut.action"><img
								src="${pageContext.request.contextPath}/img/log.png"
								style="padding-right: 6px" />Sign out</a></li>
					</ul>
				</div>

				<ul id="menu">
					<li class="current"><a href="showDashboard.action">Home</a></li>
					<li class="current"><a href="RelManagerDhasBoard.action">Policy</a>
						<ul>
							<li><a href="insertPolicyReq.action">New Policy</a></li>
							<li><a href="RelManagerDhasBoard.action">View Policy</a></li>
						</ul></li>
					<li class="current"><a
						href="${pageContext.request.contextPath}/jsp/Prospect.jsp">Prospect</a></li>
					<li class="current"><a
						href="${pageContext.request.contextPath}/jsp/ClaimForm.jsp">Claim</a>
						<ul>
							<li><a href="${pageContext.request.contextPath}/jsp/ClaimForm.jsp">New Claim</a></li>
							<li><a href="viewclaimAll.action">View Claim</a></li>
						</ul></li>
				</ul>

			</div>
		</div>