<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="UTF-8"%>
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
}
</style>
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
				<s:form action="inputdata_showDownPage" namespace="/" method="post">
					<s:textfield label="月份" name="inputdata.date"></s:textfield>
					<s:textfield label="房 间 号" name="inputdata.roomid" value=""></s:textfield>
					<s:textfield label="本月水表读数" name="inputdata.waternum" value=""></s:textfield>
					<s:textfield label="本月电表读数" name="inputdata.elecnum" value=""></s:textfield>
					<s:textfield label="本月卫生费" name="inputdata.cleanfee" value=""></s:textfield>
					<s:textfield label="备注" name="beizhu"></s:textfield>
					<s:submit value="确认录入"></s:submit>
				</s:form>
			</center>
		</div>
	</div>
</body>
</html>