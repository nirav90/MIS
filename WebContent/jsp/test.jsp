<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajax.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>nsert title here</title>

<script type="text/javascript">

function makeRequest() {
	var s = document.getElementById("change").value.trim();
	var  url = "${pageContext.request.contextPath}/jsp/ajaxJsp/testRsp.jsp";
	var queryString = "color="+s+"";
	reqAjax(url, queryString, callback);
}
function callback()
{
	if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				//document.getElementById("result").style.display = "block";
				
				//alert(xmlHttp.responseText);
				
				document.getElementById("result").innerHTML = xmlHttp.responseText;
			} else {
				alert("HTTP error " + xmlHttp.status + ": "
						+ xmlHttp.statusText);
			}
		}
}


</script> 
</head>
<body>
<form action="logOut" method="post">
<table>
	<tr>
		<td>username</td><td><input type="text" name="username" ></td>
	</tr>
	<tr>
		<td>username</td><td><input type="text" name="username" ></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="Add"></td>
	</tr>
	<tr>
	<td>select color</td>
	<td><select id="change" onchange="javascript:makeRequest();">
	<option value="red">red</option>
	<option value="black">black</option>
	<option value="green">green</option>
	<option value="blue">blue</option>
	</select></td>
	
	</tr>
	
	
</table>
<div id="result" ></div>
</form>
</body>
</html>