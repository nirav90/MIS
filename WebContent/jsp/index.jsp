
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Login Form</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style1.css">
<!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<%@ taglib uri="/struts-tags" prefix="s"%>
</head>



<body>



	<section class="container">
	<div class="logo">
	<center><img src="${pageContext.request.contextPath}/img/logo.jpg" /></center>
	</div>
		<%
			String error = (String) request.getAttribute("error");
			if (error == null) {
			} else {
		%>
		<div id="error" class="error">
			<b><%=error%></b>
		</div>
		<%
			}
		%>
		<div class="login">

			<h1>Login</h1>
			<s:form method="post" action="auth">



				<p>

					<s:textfield theme="simple" name="userMaster.userName"
						value="username"
						cssStyle="width:238px; margin-right:9px; z-index:1111;"
						onfocus="if (this.value=='username') this.value='';"
						onblur="if (this.value=='') this.value='username';" />
				</p>
				<p>

					<s:password theme="simple" name="userMaster.password"
						value="password"
						cssStyle="width:238px; margin-right:9px; z-index:1111;"
						onfocus="if (this.value=='password') this.value='';"
						onblur="if (this.value=='') this.value='password';" />
				</p>
				<p class="remember_me">
					<label> <input type="checkbox" name="remember_me"
						id="remember_me"> Remember me on this computer
					</label>
				</p>
				<p class="submit">
					<input type="submit" name="commit" value="Login">
				</p>
			</s:form>
		</div>

		<div class="login-help">
			<p>
				Forgot your password? <a href="index.html">Click here to reset
					it</a>.
			</p>
		</div>
	</section>

</body>
</html>
