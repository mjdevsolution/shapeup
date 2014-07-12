/**
 * 
 */
package com.dms.common.util;

/**
 * @author Jeyakaran
 * 
 */
public enum UserRole {

	ADMIN("ADMIN"), USER("USER");

	private String userRole;

	private UserRole(final String userRole) {
		this.userRole = userRole;
	}

	public String getUserRole() {
		return userRole;
	}

}
