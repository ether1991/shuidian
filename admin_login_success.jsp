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
<title>管理员登陆成功</title>
<style type="text/css">
#adminLoginSuccess_container {
	width: 768px;
	height: 100%;
	margin-left: auto;
	margin-right: auto;
	font-style: oblique;
	border: solid;
	border-color: rgb(223, 223, 223);
}
/* #body {
	margin-top: 60px;
} */
</style>

</head>
<body>
	<div id="adminLoginSuccess_container">
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
				<%-- 提示:近一个月，有<s:property value="num"/>合同将要过期 --%>
				<hr>
				<p>管理数据录入账户</p><a href="user_logout">注销登录</a>
				<a href="user_queryAllUser">管理数据录入用户</a><br/> 
				<hr>
				<p>家属院</p>
				<a href="familynum_FamilyNumselectALl">管理家属院住户信息</a><br/>
				<a href="price_selectPrice?price.id=1">查询水电单价</a><br/> 
			<!-- 	<a href="price_showtable">显示历史数据</a><br/>  -->
				<a href="familynum_toinputData">录入数据</a><br/>
				<a href="familyfee_toquerydata">查询数据</a><br/>
				<hr> 
				<p>租户</p>
				<a href="hirenum_HireNumselectAll">管理租户信息</a><br/>
				<a href="hireprice_selectHireprice?hireprice.id=1">查询水电单价</a><br/> 
				<!-- <a href="#">显示历史数据</a><br/> -->
				<a href="hirenum_tohireinputdata">录入数据</a><br/> 
				<a href="hirefee_tohirequerypage">查询数据</a><br/>
				<hr>
				<p>课题组</p>
				<a href="officenum_officenumselectAll">管理办公室用户信息</a><br/> 
				<a href="officeprice_selectOfficePrice?officeprice.id=1">查询水电单价</a><br/>
				<a href="freespace_selectfreespace?freespace.id=1">查询免费使用面积</a><br/> 
				<!-- 	<a href="#">显示历史数据</a><br/>  -->
				<a href="officenum_toiniputfreespace">录入课题组优惠信息数据</a><br/>
				<a href="officenum_toofficeinputdata">录入数据</a><br/>
				<a href="officefee_toofficefeequerydata">查询数据</a><br/>
			</center>
		</div>
	</div>
</body>
</html>