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

function  KeyDown(){     
    
  if   (event.keyCode==116){     
  alert("禁止F5刷新网页！");  
  event.keyCode=0;   
  event.returnValue=false;   
  }   
  
  if ((event.ctrlKey)&&(event.keyCode==82)){ 
         alert("禁止Ctrl+R刷新网页！"); 
         event.keyCode=0;  
         event.returnValue=false;  
     }  
   
     if ((event.shiftKey)&&(event.keyCode==121)){ 
         alert("禁止shift+F10刷新网页！"); 
         event.keyCode=0;  
         event.returnValue=false;  
     }  
  } 

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
		<%-- <s:a action="user_toadminLoginSuccess">返回首页</s:a> --%>
			<center>
				<p>录入家属院数据</p>
				<s:form action="inputdata_showDownPage" namespace="/" method="post">
					<s:textfield label="月份" name="inputdata.date" onfocus="HS_setDate(this)"></s:textfield>
					<s:textfield label="房 间 号" name="inputdata.roomid" value=""></s:textfield>
					<s:textfield label="本月水表读数" name="inputdata.waternum" value=""></s:textfield>
					<s:textfield label="本月电表读数" name="inputdata.elecnum" value=""></s:textfield>
					<s:textfield label="本月卫生费" name="inputdata.cleanfee" value=""></s:textfield>
					<s:submit value="确认录入" onclick="KeyDown()"></s:submit>
				</s:form>
			</center>
			<hr>
			<center>
				<table width="90%" border="1">
					<tr>
						<th>日期</th>
						<th>房间号</th>
						<th>本月水表读数</th>
						<th>本月水费</th>
						<th>本月电表读数</th>
						<th>本月电费</th>
						<th>本月卫生费</th>
						<th>本月总共费用</th>
						<th>修改</th>
					</tr>
					<tr>
						<td><s:property value="familyfee.date" />
						<td><s:property value="familyfee.roomid" /></td>
						<td><s:property value="familyfee.waternum" /></td>
						<td><s:property value="familyfee.waterfee" /></td>
						<td><s:property value="familyfee.elecnum" /></td>
						<td><s:property value="familyfee.elecfee" /></td>
						<td><s:property value="familyfee.cleanfee" /></td>
						<td><s:property value="familyfee.allfee" /></td>
						<%-- <td><s:a action="inputdata_modifyInput"><s:param name="familyfee11">${familyfee}</s:param>修改</s:a></td> --%>
						<td><s:form action="inputdata_modifyInput">
								<s:hidden name="inputdata.roomid"></s:hidden>
								<s:hidden name="inputdata.date"></s:hidden>
								<s:submit value="删除本条记录" onclick="KeyDown()"></s:submit>
							</s:form>
					</tr>
				</table>
				<s:a href="login_success.jsp">返回首页</s:a>&nbsp;
				<s:a href="#">退出</s:a>
	<%-- 			<hr>
				<s:form action="familyfee_familyfeeSelectAll" method="post">
					<s:textfield label="月份" name="date"></s:textfield>
					<s:submit value="确认查询"></s:submit>
				</s:form>
				<hr>
				<s:form action="familyfee_familyfeeSelectByRoomId" method="post">
					<s:textfield label="房 间 号" name="roomid" value=""></s:textfield>
					<s:submit value="确认查询"></s:submit>
				</s:form> --%>
			</center>
		</div>
	</div>
</body>
</html>