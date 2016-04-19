<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JS日期选择器</title>
<script type="text/javascript" src="WdatePicker.js"></script>
<style>
  body {font-size:12px}
  td {text-align:center}
  h1 {font-size:26px;}
  h4 {font-size:16px;}
  em {color:#999; margin:0 10px; font-size:11px; display:block}
  </style>
</head>
<body>
<h1>Date Picker Demo By Codefans.net</h1>
<h4 style="border-bottom:1px solid #ccc">ver:1.0</h4>
<table border="1" width="400" height="150">
 <tr>
  <td>这是示例文字</td>
  <td>示例输入框</td>
  <td>文本文本文本</td>
 </tr>
 <tr>
  <td>示例输入框</td>
  <td><input type="text" style="width:70px" onfocus="HS_setDate(this)">文本</td>
  <td>这里是你的文字</td>
 </tr>
 <tr>
  <td>一段文字</td>
  <td>示例输入框</td>
  <td>文本<input type="text" style="width:70px" onfocus="HS_setDate(this)">文本</td>
 </tr>
</table>
<ul>
 <li>它不需要其他框架类支持</li>
 <li>支持多种浏览器</li>
 <li>点击年份、月份可下拉选择</li>
</ul>
</body>
</html>