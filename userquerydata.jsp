<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>Insert title here</title>

<style type="text/css">
#inputData_container {
	width: 768px;
	height: 100%;
	margin-left: auto;
	margin-right: auto;
	font-style: oblique;
	border: solid;
	border-color: rgb(223, 223, 223);
}

#body {
	margin-top: 60px;
	height:100%;
}
</style>
<script type="text/javascript" src="WdatePicker.js"></script>
</head>
<body>
	<div id="inputData_container">
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
				<p>查询家属院用户数据</p>
				<hr>
				<p>按照月份查询</p>
				<s:form action="familyfee_familyfeeSelectByDate" method="post">
					<s:textfield label="月份" name="date" onfocus="HS_setDate(this)"></s:textfield>
					<s:submit value="确认查询"></s:submit>
				</s:form>
				<hr>
				<p>按照房间号查询</p>
				<s:form action="familyfee_familyfeeSelectByRoomId" method="post">
					<s:textfield label="房 间 号" name="roomid" value=""></s:textfield>
					<s:submit value="确认查询"></s:submit>
				</s:form>
				<hr>
				<p>查询所有历史数据</p>
				<s:form action="familyfee_familyfeeGetAll" method="post">
					<s:submit value="确认查询"></s:submit>
				</s:form>
				<s:a href="login_success.jsp">返回首页</s:a>&nbsp;
				<s:a href="#">退出</s:a>
			</center>
		</div>
	</div>

</body>
</html>