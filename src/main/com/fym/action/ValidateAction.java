package com.fym.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Validateable;
import lombok.Getter;

public class ValidateAction extends ActionSupport implements Validateable{
	private static final long serialVersionUID = 1L;
	@Getter
	private String username;
	@Getter
	private String password;
	@Override
	public String execute() throws Exception {
		if("fanyaming".equals(username)&&"1234567".equals(password)){
			ActionContext.getContext().getSession().put("USER_IN_SESSION", username);
			return SUCCESS;
		}
		System.out.println("登录失败哦");
		return NONE;
	}
	public String list() throws Exception {
		System.out.println("列表查询");
		return NONE;
	}
	public String delete() throws Exception {
		System.out.println("删除数据");
		return NONE;
	}
	@Override
	public void validate() {
		
	}
	//用validate作为前缀,后面跟上方法名,表示只在这个方法前进行数据校验,而不会在其他方法之前进行数据校验
	public void validateExecute() {
		//该方法在执行业务方法之前执行
		System.out.println("数据校验");
		if(username==null||username.trim().length()<6){
			super.addFieldError("username", "账号不能为空,或者不能少于6位");
		}
		if(password==null||password.trim().length()<6){
			super.addFieldError("password", "密码不能为空,或者不能少于6位");
		}
	}
}
