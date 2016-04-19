<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户登录</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<s:head />
<style type="text/css">
#container {
	width: 768px;
	height: 100%;
	margin-left: auto;
	margin-right: auto;
	font-style: oblique;
	border: solid;
	border-color: rgb(223, 223, 223);
}

#login_continer {
	margin-left: auto;
	margin-right: auto;
	vertical-align: middle;
	font-style: oblique;
}

#footer {
	margin-top: 200px;
	background-color: cyan;
}
</style>

</head>

<body>
	<div id="container">
		<div id="header">
			<img src="resources/images/header.png" width="768" height="136"
				border="0" name="index_header" />
			<iframe name="sinaWeatherTool"
				src="http://weather.news.sina.com.cn/chajian/iframe/weatherStyle1.html?city=%E5%B9%BF%E5%B7%9E"
				width="200" height="20" marginwidth="0" marginheight="0" hspace="0"
				vspace="0" frameborder="0" scrolling="no"></iframe>
		</div>
		<div id="body">
			<div id="login_continer">
				<center>
					<h1>用户登录</h1>
					<s:form action="user_login" namespace="/user" method="post">
						<s:textfield label="用户名" name="user.username"></s:textfield>
						<s:password label="密	码" name="user.password"></s:password>
						<s:submit value="登  录"></s:submit>
					</s:form>
					<%-- <s:a href="forget_pwd.jsp">忘记密码？</s:a>
					<s:a href="userAdd.jsp">用户注册</s:a> --%>
				</center>
			</div>
		</div>
		<div id="footer">
			<center>
				<strong>相关链接：</strong>Copyright (c) <a href="http://www.soil.gd.cn/">广东省环境与土壤研究所</a>
			</center>

		</div>
	</div>
</body>
</html>
