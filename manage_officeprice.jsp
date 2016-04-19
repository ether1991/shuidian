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
<title>当前系统单价</title>

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
				<h2>当前单价列表</h2>
				<table width="90%" border="1">
					<tr>
						<th>自来水单价(元/立方米)</th>
						<th>生活用电单价(元/度)</th>
						<th>办公区域单价(元/平方米)</th>
						<th>超出面积单价(元/平方米)</th>
						<!-- <th>操作</th> -->
					</tr>
					<tr>
						<td><s:property value="officeprice.waterprice" /></td>
						<td><s:property value="officeprice.elecprice" /></td>
						<td><s:property value="officeprice.roomprice" /></td>
						<td><s:property value="officeprice.exceedroomprice" /></td>
					</tr>
				</table>
			</center>
			<center>
				<h2>修改单价</h2>
					<s:form action="officeprice_updateOfficePrice?officeprice.id=1" method="post">
					<s:textfield label="水费单价" name="officeprice.waterprice"></s:textfield>
					<s:textfield label="电费单价" name="officeprice.elecprice"></s:textfield>
					<s:textfield label="办公区域单价" name="officeprice.roomprice"></s:textfield>
					<s:textfield label="超出单价" name="officeprice.exceedroomprice"></s:textfield>
					<s:submit value="确认更改"></s:submit>
				</s:form>
			</center>
		</div>
	</div>
</body>
</html>
