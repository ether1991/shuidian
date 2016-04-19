<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<META HTTP-EQUIV="pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">
<title>forget_pwd</title>
<style type="text/css">
#forget_pwd_container {
	width: 768px;
	height: 635px;
	margin-left: auto;
	margin-right: auto;
	border: solid;
	border-color: rgb(223, 223, 223);
}

#forget_pwd_body {
	width: 700px;
	height: 500px;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<div id="forget_pwd_container">
		<div id="forget_pwd_header">
			<img src="resources/images/header.png" width="768" height="136"
				border="0" name="index_header" />
		</div>

		<div id="forget_pwd_body" align="center">
			<form action="#">
				<p>找回密码</p>
				<p>
					<strong>您的电子邮箱不回被公布出去，但是必须填写。</strong> 请您认真回忆注册时的用户名和注册的邮箱
				</p>
				<div>
					<label for="Name">用户名:&nbsp;</label> <input type="text" name="Name"
						id="Name" value="" size="20" maxlendth="30" /> *(最多30个字符)<br />
				</div>
				<div>
					<label for="Email">注册邮箱:</label> <input type="text" name="Email"
						id="Email" value="" size="20" maxlength="150" /> *(输入电子邮箱)<br />
				</div>
				<div class="forget_pwd_enter">
					<input type="submit" value="找回密码" /> <input type="button"
						value="忘记用户名" onclick="alert('请联系管理员')">
				</div>
			</form>
		</div>
	</div>
</body>
</html>