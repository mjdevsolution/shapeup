package com.dms.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class LoginUser extends User {

	private String name;

	public LoginUser(String username, String password, String name,
			Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);

		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
