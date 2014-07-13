/**
 * 
 */
package com.shapeup.persistence.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.shapeup.persistence.model.BaseAddress;
import com.shapeup.persistence.model.EntityStandard;

/**
 * @author Jeyakaran
 * 
 */
@Entity
@Table(name = Address.TABLE_NAME)
public class Address extends BaseAddress {

	private static final long serialVersionUID = 1L;

	public static final String TABLE_NAME = "ADDRESS";
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

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

}
