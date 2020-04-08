<%@page import="com._520it.validate.User"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("num", 20);
	%>
	<s:if test="#request.num>20">大于20</s:if>
	<s:elseif test="#request.num<20">小于20</s:elseif>
	<s:else>等于20</s:else>
	<%
		List<String> list = new ArrayList<String>();
	list.add("lili");
	list.add("will");
	list.add("yanling");
	 	request.setAttribute("list", list);
	%>
	<s:iterator value="#request.list" var="ele">
		<s:property value="#ele"/>
	</s:iterator>
	<% 
		List<User> list1 = new ArrayList<User>();
		User u = new User();
		u.setId(1L);
		u.setName("yanling");
		u.setAge(20);
		User u1 = new User();
		u1.setId(2L);
		u1.setName("yanling");
		u1.setAge(18);
		list1.add(u);
		list1.add(u1);
		request.setAttribute("list1", list1);
	%>
	<!-- 使用便利接收,表示把数据存储到context中 -->
	<s:iterator value="#request.list1" var="ele1">
		<s:property value="#ele1.id"/>
		<s:property value="#ele1.name"/>
		<s:property value="#ele1.age"/>
	</s:iterator>
	<!-- 不使用变量接收,表示把数据存储到root中,直接使用属性名就可以得到值 -->
	<s:iterator value="#request.list1">
		<s:property value="#id"/>
		<s:property value="#name"/>
		<s:property value="#age"/>
	</s:iterator>
</body>
</html>