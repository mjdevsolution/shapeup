/**
 * 
 */
package com.dms.persistence.model;

import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.MappedSuperclass;

import com.dms.common.util.UserRole;

/**
 * @author Jeyakaran
 * 
 */
@MappedSuperclass
public abstract class BaseUserRole extends BaseEntity {

	@Column(name = "USERROLE")
	@Enumerated(EnumType.STRING)
	private UserRole userRole;

	public UserRole getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}

}
