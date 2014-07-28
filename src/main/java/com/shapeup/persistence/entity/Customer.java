/**
 * 
 */
package com.shapeup.persistence.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.shapeup.persistence.model.BaseCustomer;
import com.shapeup.persistence.model.EntityStandard;

/**
 * @author Jeyakaran
 * 
 */
@Entity
@Table(name = Customer.TABLE_NAME)
public class Customer extends BaseCustomer {

	private static final long serialVersionUID = 1L;

	public static final String TABLE_NAME = "CUSTOMER";
	public static final String TABLE_PK = EntityStandard.PK;
	public static final String TABLE_SEQUENCE_NAME = EntityStandard.SEQUENCE_PREFIX + TABLE_NAME + EntityStandard.SEPERATOR + TABLE_PK;
	public static final String TABLE_FK = TABLE_NAME + EntityStandard.SEPERATOR + TABLE_PK;

	@Id
	@Column(name = TABLE_PK)
	@SequenceGenerator(name = TABLE_SEQUENCE_NAME, sequenceName = TABLE_SEQUENCE_NAME)
	@GeneratedValue(generator = TABLE_SEQUENCE_NAME)
	private Long id;

	@JoinColumn(name = Customer.TABLE_FK, referencedColumnName = Customer.TABLE_PK)
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Address> addresses = new ArrayList<Address>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}

}
