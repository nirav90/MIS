<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-dojo-tags" prefix="sx" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MIS</title>
<style type="text/css">


.header
{
background-color: #8D8CC2;
height: 100px;
margin: 0px;
}
.main
{
background-color: #D6D5F5;
height: 700px;
margin: 0px;
}
.footer
{
background-color: #8D8CC2;
height: 60px;
 margin-bottom: 0px; 
}
.t {
	display: none;
}


</style>


<sx:head/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tcal.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/tcal.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajax.js"></script> 





</head>
<body bgcolor="#D6D5F5">
<s:div cssClass="header">
<h1 align="center" >M  I S</h1>
</s:div >

<div>
<table width="100%"  >
<tr>
<td><a href="showUserList.action">Home</a></td>
<td><a href="${pageContext.request.contextPath}/jsp/addUser.jsp"> New User</a></td>
<td><a href="businessDashBoard.action">Business</a></td>
<td><a href="logOut.action">Log Out</a></td>

</tr>
</table>
<div>