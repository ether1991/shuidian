<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <base href="<%=basePath%>">
    <title>用户列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	<style type="text/css">
	
		#useList_container{
			width:768px;
			height:100%;
			margin-left: auto;
			margin-right: auto;
			font-style:oblique;
			border:solid;
			border-color:rgb(223,223,223);
		}
	</style>
  </head>
  
 <body>
  	<div id="useList_container">
  			<div id="header" >
				<img src="resources/images/header.png" width="768" height="136" border="0" name="index_header"/>
				<iframe name="sinaWeatherTool" src="http://weather.news.sina.com.cn/chajian/iframe/weatherStyle1.html?city=%E5%B9%BF%E5%B7%9E" width="200" height="20" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
			</div>
			<div id="body">
				<center>
				    	<h2>用户列表</h2>
				    	<a href="userAdd.jsp">添加用户</a>
				        <table width="90%" border="1">
				            <tr>
				            	<th>用户id</th>
				            	<th>用户名称</th>
				            	<th>用户密码</th>
				            	<th>邮箱</th>
				            	<th>操作</th>
				            </tr>
					        <s:iterator  value="userList">
					        	<tr>
					        		<td><s:property value="id"/> </td>
					        		<td><s:property value="username"/> </td>
					        		<td><s:property value="password"/> </td>
					        		<td><s:property value="email"/>
					        		<td><s:a action="user_updateUI" namespace="/user"><s:param name="user.id">${id}</s:param>修改</s:a>
					        		&nbsp;&nbsp;<s:a action="user_delete" namespace="/user"><s:param name="user.id">${id}</s:param>删除</s:a></td>
					        	</tr>
					        </s:iterator>
					         
				        </table>
				       	    <s:iterator begin="1" end="page.pages" var="page" >
               			 		<a href="familynum_FamilyNumselectALl?page.page=<s:property value="#page"/>"><s:property value="#page"/></a>
               			 	</s:iterator>
				    </center>
			</div>
  	</div>
    
  </body>
</html>
