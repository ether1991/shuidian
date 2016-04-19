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
    <title>修改用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	<style type="text/css">
		#userUpdate_container{
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
  	<div id="userUpdate_container">
  		<div id="header" >
				<img src="resources/images/header.png" width="768" height="136" border="0" name="index_header"/>
				<iframe name="sinaWeatherTool" src="http://weather.news.sina.com.cn/chajian/iframe/weatherStyle1.html?city=%E5%B9%BF%E5%B7%9E" width="200" height="20" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
		</div>
		
  		<div id="body">
  			  <center>
			    	<h1>修改用户</h1>
			    	<s:form action="user_update" namespace="/user" method="post">
			    		<s:hidden name="user.id"></s:hidden>
			    		<s:textfield label="用户名" name="user.username"></s:textfield>
			    		<s:password label="密码" name="user.password"></s:password>
			    		<s:submit value="提交"></s:submit>
			    	</s:form>
			    </center>

  		</div>
  	</div>
   
  </body>
</html>