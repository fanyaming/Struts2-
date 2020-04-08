<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="emp_delete.action?id=1">删除</a>
	<s:a namespace="/pss" action="emp_delete">
	 <s:param name="id" value="1">删除</s:param>
	</s:a>
</body>
</html>