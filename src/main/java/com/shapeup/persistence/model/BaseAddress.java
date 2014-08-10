/**
 * 
 */
package com.shapeup.persistence.model;

import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.MappedSuperclass;

import com.shapeup.common.util.AddressType;

/**
 * @author Jeyakaran
 * 
 */
@MappedSuperclass
public abstract class BaseAddress extends BaseEntity {

	@Column(name = "TYPE")
	@Enumerated(EnumType.STRING)
	private AddressType type;

	@Column(name = "LINE_ONE")
	private String lineOne;

	@Column(name = "LINE_TWO")
	private String lineTwo;

	@Column(name = "CITY")
	private String city;

	@Column(name = "PHONE_NO")
	private String phoneNo;

	@Column(name = "FAX_NO")
	private String fax;

	@Column(name = "EMAIL")
	private String email;

	public AddressType getType() {
		return type;
	}

	public void setType(AddressType type) {
		this.type = type;
	}

	public String getLineOne() {
		return lineOne;
	}

	public void setLineOne(String lineOne) {
		this.lineOne = lineOne;
	}

	public String getLineTwo() {
		return lineTwo;
	}

	public void setLineTwo(String lineTwo) {
		this.lineTwo = lineTwo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
