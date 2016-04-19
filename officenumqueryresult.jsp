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
<title>课题组列表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<style type="text/css">
#familyNumList_container {
	width: 1024px;
	height: 100%;
	margin-left: auto;
	margin-right: auto;
	font-style: oblique;
	border: solid;
	border-color: rgb(223, 223, 223);
}

#body {
	height: 100px;
}
</style>
</head>

<body>
	<div id="familyNumList_container">
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
				<p>课题组列表</p>
				<a href="user_toadminLoginSuccess">返回管理页面</a>
				<a href="officenum_toofficenumquery">返回查询信息</a>
				<table width="90%" border="1">
					<tr>
						<th>房间号</th>
						<th>课题组名</th>
						<th>正高人数</th>
						<th>副高人数</th>
						<th>中级人数</th>
						<th>助理人数</th>
						<th>学生人数</th>
						<th>课题组总人数</th>
						<th>当前房间使用面积</th>
						<th>课题组共用面积</th>
						<th>课题组免费面积</th>
						<th>当前水表读数</th>
						<th>当前电表读数</th>
						<th>超出面积</th>
						<th>操作</th>
					</tr>
					<s:iterator value="officenumList">
						<tr>
							<td><s:property value="roomid" /></td>
							<td><s:property value="teamname" /></td>
							<td><s:property value="rank1" /></td>
							<td><s:property value="rank2" /></td>
							<td><s:property value="rank3" /></td>
							<td><s:property value="rank4" /></td>
							<td><s:property value="rank5" /></td>
							<td><s:property value="allpeoplenum" /></td>
							<td><s:property value="spaceuse"/></td>
							<td><s:property value="allspaceuse"/></td>
							<td><s:property value="freespace"/></td>
							<td><s:property value="waternum"/></td>
							<td><s:property value="elecnum"/></td>
							<td><s:property value="morespace" /></td>
							<td><s:a action="officenum_toofficenumUpdate">
									<s:param name="officenum.id">${id}</s:param>修改</s:a>&nbsp;
								<s:a action="officenum_officenumDeleteId">
									<s:param name="officenum.id">${id}</s:param>删除</s:a>
						</tr>
					</s:iterator>
				</table>
				<%-- <s:iterator begin="1" end="page.pages" var="page">
					<a
						href="familynum_FamilyNumselectALl?page.page=<s:property value="#page"/>"><s:property
							value="#page" /></a> 
				</s:iterator>--%>
			</center>
		</div>
	</div>


</body>
</html>
