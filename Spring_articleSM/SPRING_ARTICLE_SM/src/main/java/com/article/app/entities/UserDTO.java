package com.article.app.entities;

public class UserDTO {
	private int u_id;
	private String u_user;
	private String u_password;
	private String u_type;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_user() {
		return u_user;
	}
	public void setU_user(String u_user) {
		this.u_user = u_user;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public String getU_type() {
		return u_type;
	}
	public void setU_type(String u_type) {
		this.u_type = u_type;
	}
}
