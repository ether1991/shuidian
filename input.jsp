<%@ page language="java" contentType="text/html; charset=utf-8"
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
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>添加家属院住户信息</h1>
		<s:form action="familyfee_familyfeeadd" namespace="/" method="post">
			<s:textfield label="房间号" name="familyfee.roomid"></s:textfield>
			<s:textfield label="用水量" name="familyfee.wateruse"></s:textfield>
			<s:textfield label="水费" name="familyfee.waterfee" value=""></s:textfield>
			<s:textfield label="用电量" name="familyfee.elecuse" value=""></s:textfield>
			<s:textfield label="电费" name="familyfee.elecfee" value=""></s:textfield>
			<s:textfield label="卫生费" name="familyfee.cleanfee" value=""></s:textfield>
			<s:textfield label="总共费用" name="familyfee.allfee" value=""></s:textfield>
			<s:textfield label="日期" name="familyfee.date"></s:textfield>
			<s:submit value="确认添加"></s:submit>
		</s:form>
		<hr>

		<s:form action="familyfee_familyfeeSelectAll" namespace="/"
			methos="post">
			<s:textfield label="查询日期" name="date" value="yyyy-mm-dd"></s:textfield>
			<s:submit value="查询" style="width: 172px"></s:submit>
		</s:form>
		<hr>
		<s:form action="familyfee_familyfeeSelectByRoomId" namespace="/"
			methos="post">
			<s:textfield label="查询房间号" name="roomid" value=""></s:textfield>
			<s:submit value="查询" style="width: 172px"></s:submit>
		</s:form>
	</center>
</body>
</html>