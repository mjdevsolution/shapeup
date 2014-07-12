/**
 * 
 */
package com.dms.persistence.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.dms.persistence.model.BaseUser;
import com.dms.persistence.model.EntityStandard;

/**
 * @author Jeyakaran
 * 
 */
@Entity
@Table(name = User.TABLE_NAME)
public class User extends BaseUser {

	private static final long serialVersionUID = 1L;

	public static final String TABLE_NAME = "USER";
	public static final String TABLE_PK = EntityStandard.PK;
	public static final String TABLE_SEQUENCE_NAME = EntityStandard.SEQUENCE_PREFIX
			+ TABLE_NAME + EntityStandard.SEPERATOR + TABLE_PK;
	public static final String TABLE_FK = TABLE_NAME + EntityStandard.SEPERATOR
			+ TABLE_PK;

	@Id
	@Column(name = TABLE_PK)
	@SequenceGenerator(name = TABLE_SEQUENCE_NAME, sequenceName = TABLE_SEQUENCE_NAME)
	@GeneratedValue(generator = TABLE_SEQUENCE_NAME)
	private Long id;

	@JoinTable(name = TABLE_NAME + EntityStandard.SEPERATOR
			+ UserRole.TABLE_NAME, joinColumns = { @JoinColumn(name = TABLE_FK, referencedColumnName = TABLE_PK) }, inverseJoinColumns = { @JoinColumn(name = UserRole.TABLE_FK, referencedColumnName = UserRole.TABLE_PK) })
	@ManyToMany
	private List<UserRole> userRoles;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<UserRole> getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(List<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

}
