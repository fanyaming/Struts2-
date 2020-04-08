<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
		<s:form  action="login" theme="simple">
			账号:<s:textfield name="username"/></br>
			密码:<s:password name="password"/></br>
			性别:<s:radio list="#{'1':'男','2':'女','3':'保密'}" name="gender"/></br>
			兴趣:<s:checkboxlist list="#{'1':'java','2':'yan','3':'ling'}" name="hobby"/></br>
			城市:<s:select list="#{'1':'广州','2':'上海','3':'北京'}" name="city" headerKey="-1" headerValue="请选择">
			
			</s:select></br>
			<s:submit value="注册"></s:submit></br>
		</s:form>
</body>
</html>