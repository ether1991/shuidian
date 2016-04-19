<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s"  uri="/struts-tags"%>
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
<script type="text/javascript"> 
<!-- download
function saveCode(obj) { 
          var winname = window.open('', '_blank', 'top=10000'); 
          var strHTML = document.all.tableExcel.innerHTML; 
          winname.document.open('text/html', 'replace'); 
          winname.document.writeln(strHTML); 
          winname.document.execCommand('saveas','','excel.xls'); 
          winname.close(); 
} 
--> 
</script> 

</head>
<body>
	 <center>
				    <p>课题组费用清单</p>
				    <%-- 水电总费用：<s:property value="allfee"/> --%>
				    <div id="tableExcel">
				    <table width="90%" border="1" width="100%" border="1" cellspacing="0" cellpadding="0">
				            <tr>
				           	    <th>日期</th>
				            	<th>课题组名称</th>
				            	<th>水费</th>
				            	<th>电费</th>
				            	<th>房间费用</th>
				            </tr>
					        <s:iterator  value="teamfeeList">
					        	<tr>
					        		<td><s:property value="date"/> </td>
					        		<td><s:property value="teamname"/> </td>
					        		<td><s:property value="waterfee"/> </td>
					        		<td><s:property value="elecfee"/> </td>
					        		<td><s:property value="roomfee"/> </td>
					        	</tr>
					        </s:iterator>
				        </table>
				    </div>
				     <%--     <s:iterator begin="1" end="page.pages" var="page" >
               			 		<a href="familynum_FamilyNumselectALl?page.page=<s:property value="#page"/>"><s:property value="#page"/></a>
               			 </s:iterator> --%>
               		<input type="button" value="另存为 Excel" onclick="saveCode(tableExcel)"> 
               		<input type="button" value="打印 Excel" onclick="window.print(tableExcel)"> 
	    </center>
	    
</body>
</html>