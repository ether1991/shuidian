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
<title>管理课题组办公资源信息</title>
<style type="text/css">
#adminUpdateFamilyNum_container {
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
	<div id="adminUpdateFamilyNum_container">
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
				<h1>修改课题组信息</h1>
				<s:form action="officenum_officenumUpdate" namespace="/" method="post">
				<s:textfield label="房间号" name="officenum.roomid"></s:textfield>
				<s:textfield label="课题组名称" name="officenum.teamname"></s:textfield>
				<s:textfield label="正高人数" name="officenum.rank1"></s:textfield>
				<s:textfield label="副高人数" name="officenum.rank2"></s:textfield>
				<s:textfield label="中级人数" name="officenum.rank3"></s:textfield>
				<s:textfield label="助理人数" name="officenum.rank4"></s:textfield>
				<s:textfield label="学生人数" name="officenum.rank5"></s:textfield>
				<s:textfield label="水表读数" name="officenum.waternum"></s:textfield>
				<s:textfield label="电表读数" name="officenum.elecnum"></s:textfield>
				<s:textfield label="房屋占用面积" name="officenum.spaceuse"></s:textfield>
				<s:submit value="确认添加"></s:submit>
			</s:form>
			</center>
		</div>
	</div>

</body>
</html>