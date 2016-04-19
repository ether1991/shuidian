<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>当前免费面积执行标准</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<style type="text/css">
#manageUnitPrice_container {
	width: 768px;
	height: 100%;
	margin-left: auto;
	margin-right: auto;
	font-style: oblique;
	border: solid;
	border-color: rgb(223, 223, 223);
}
</style>
</head>

<body>
	<div id="manageUnitPrice_container">
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
				<h2>当前免费面积执行标准（平方米）</h2>
				<table width="90%" border="1">
					<tr>
						<th>正高</th>
						<th>副高</th>
						<th>中级</th>
						<th>助理</th> 
						<th>学生</th> 
					</tr>
					<tr>
						<td><s:property value="freespace.rank1" /></td>
						<td><s:property value="freespace.rank2" /></td>
						<td><s:property value="freespace.rank3" /></td>
						<td><s:property value="freespace.rank4" /></td>
						<td><s:property value="freespace.rank5" /></td>
					</tr>
				</table>
			</center>
			<center>
				<h2>修改免费面积</h2>
					<s:form action="freespace_updatefreespace?freespace.id=1" method="post">
					<s:textfield label="正高" name="freespace.rank1"></s:textfield>
					<s:textfield label="副高" name="freespace.rank2"></s:textfield>
					<s:textfield label="中级" name="freespace.rank3"></s:textfield>
					<s:textfield label="助理" name="freespace.rank4"></s:textfield>
					<s:textfield label="学生" name="freespace.rank5"></s:textfield>
					<s:submit value="确认更改"></s:submit>
				</s:form>
			</center>
		</div>
	</div>
</body>
</html>
