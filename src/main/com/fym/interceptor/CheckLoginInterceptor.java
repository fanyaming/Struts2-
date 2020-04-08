package com.fym.interceptor;


import lombok.Setter;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class CheckLoginInterceptor extends AbstractInterceptor{
	private static final long serialVersionUID = 1L;
	@Setter
	private String loginName;
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//获取session对象
		 Object user = invocation.getInvocationContext().getSession().get("USER_IN_SESSION");
		//判断是否有值
		if(user==null){
			//只要是需要跳转,就返回一个逻辑视图名称 
			return loginName;
		}
		//放行
		return invocation.invoke();
	}	
}
