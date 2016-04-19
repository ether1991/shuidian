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
    <title>添加新用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	
	<style type="text/css">
		#userAdd_container{
			width:768px;
			height:100%;
			margin-left: auto;
			margin-right: auto;
			border:solid;
			border-color:rgb(223,223,223);
		}
			#userAdd_body{
				width: 700px;
				margin-left:auto;
				margin-top:50px;
				margin-right:auto;
		}
	</style>

  </head>
  
  <body>
  <div id="userAdd_container">
  	<div id="userAdd_header" >
		<img src="resources/images/header.png" width="768" height="136" border="0" name="index_header"/>
	</div>
	<div id="userAdd_body">
		 <center>
    	<h1>用户注册</h1>
    	<p><strong>您的电子邮箱不回被公布出去，但是必须填写。</strong> 在您注册之前请认真阅读服务条款。</p>
    	<s:form action="user_add" namespace="/user" method="post">
    		<s:textfield label="用户名" name="user.username"></s:textfield>
    		<s:password label="密码" name="user.password"></s:password>
    		<s:textfield label="邮箱" name="user.email"></s:textfield>
    		<s:submit value="确认注册" />
    	</s:form>
    	 <label for="Agree">同意服务条款</label>
		 <input type="checkbox" name="Agree" id="Agree" value="1" />
		 <a href="resources/txt/ServerRole.txt" title="您是否同意服务条款">先看看条款？</a> *
    	 <p><strong>* 在提交您的注册信息时，我们认为您已经同意了我们的服务条款。<br />
			          * 这些条款可能在未经您同意的时候进行修改。</strong></p>  
    </center>
	</div>
  	
  </div>
   
  </body>
</html>
