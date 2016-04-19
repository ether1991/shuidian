<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<title>登陆成功</title>
<style type="text/css">
	#loginsuccess_container{
		width: 768px;
		height: 100%;
		margin-left: auto;
		margin-right: auto;
		font-style: oblique;
		border: solid;
		border-color: rgb(223, 223, 223);
	}
	#body{
		height:400px;
		
	}
</style>
</head>
<body>
	<div id="loginsuccess_container">
		<div id="header">
			<img src="resources/images/header.png" width="768" height="136"
				border="0" name="index_header" />
			<iframe name="sinaWeatherTool"
				src="http://weather.news.sina.com.cn/chajian/iframe/weatherStyle1.html?city=%E5%B9%BF%E5%B7%9E"
				width="200" height="20" marginwidth="0" marginheight="0" hspace="0"
				vspace="0" frameborder="0" scrolling="no"></iframe>
		</div>
		<div id="body">
			<center>
				<p>选择录入数据类型</p><br/>
				<hr>
				<s:a href="userinputData.jsp">录入家属院水电费数据</s:a><br/>
				<hr>
				<s:a href="userhireInputData.jsp">录入租户水电费数据</s:a><br/>
				<hr>
				<s:a href="userofficeInputData.jsp">录入办公室水电费数据</s:a><br/>
			</center>
		</div>
	</div>
</body>
</html>