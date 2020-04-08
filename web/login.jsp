<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%--	<s:debug/>
		<s:property value="fieldErrors.username[0]"/>
		<s:property value="fieldErrors.password[0]"/>--%>
		<form   action="/login" method="post">
			账号:<input name="username"/></br>
			密码:<input name="password" type="password"/></br>
			<input type="submit" value="登录"/>
		</form>
</body>
</html>