/**
 * 
 */
package com.dms.persistence.model;

import java.io.Serializable;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Base abstract class for all Entities
 * 
 * @author Jeyakaran
 * 
 */
@MappedSuperclass
public abstract class BaseEntity implements Serializable {

	@Column(name = "CREATE_USER")
	private String createUser;

	@Column(name = "CREATE_DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar createDateTime;

	@Column(name = "MODIFY_USER")
	private String modifyUser;

	@Column(name = "MODIFY_DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar modifyDateTime;

	@Column(name = "MODIFY_REMARKS")
	private String modifyRemarks;

	@PrePersist
	@PreUpdate
	private void createDateTime() {
		if (this.createDateTime == null) {
			this.createDateTime = Calendar.getInstance();
		}

		this.modifyDateTime = Calendar.getInstance();
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public Calendar getCreateDateTime() {
		return createDateTime;
	}

	public void setCreateDateTime(Calendar createDateTime) {
		this.createDateTime = createDateTime;
	}

	public String getModifyUser() {
		return modifyUser;
	}

	public void setModifyUser(String modifyUser) {
		this.modifyUser = modifyUser;
	}

	public Calendar getModifyDateTime() {
		return modifyDateTime;
	}

	public void setModifyDateTime(Calendar modifyDateTime) {
		this.modifyDateTime = modifyDateTime;
	}

	public String getModifyRemarks() {
		return modifyRemarks;
	}

	public void setModifyRemarks(String modifyRemarks) {
		this.modifyRemarks = modifyRemarks;
	}

}
