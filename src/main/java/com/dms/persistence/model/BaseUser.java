/**
 * 
 */
package com.dms.persistence.model;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

/**
 * @author Jeyakaran
 * 
 */
@MappedSuperclass
public abstract class BaseUser extends BaseEntity {

	@Column(name = "NAME")
	private String name;

	@Column(name = "USERNAME")
	private String username;

	@Column(name = "PASSWORD")
	private String password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
