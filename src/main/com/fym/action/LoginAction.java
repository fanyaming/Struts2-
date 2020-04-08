package com.fym.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import lombok.Setter;

import java.util.Map;

public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	@Setter
	private String username;
	@Setter
	private String password;
	@Override
	public String execute() throws Exception {
		//获取session对象
		Map<String, Object> session = ActionContext.getContext().getSession();
		//将对象中的数据共享到作用域中去
		session.put("USER_IN_SESSION", username);
		if("admin".contains(username)&&"1234".contains(password)){
			return "success";
		}
		return NONE;
	}
}
