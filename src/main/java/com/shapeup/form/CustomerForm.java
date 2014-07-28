/**
 * 
 */
package com.shapeup.form;

import java.io.Serializable;

import com.shapeup.common.util.AddressType;
import com.shapeup.common.util.CommonUtil;
import com.shapeup.common.util.FlowType;
import com.shapeup.persistence.entity.Address;
import com.shapeup.persistence.entity.Customer;

/**
 * @author Jeyakaran
 * 
 */
public class CustomerForm implements Serializable {

	private static final long serialVersionUID = 1L;

	private FlowType flowType;

	private Customer customer;
	private Address personalAddress;
	private Address officeAddress;

	public CustomerForm() {

	}

	public void init(final Customer customer) {
		this.customer = customer;

		if (!CommonUtil.isNullOrEmpty(this.customer.getAddresses())) {
			for (Address address : this.customer.getAddresses()) {
				if (AddressType.PERSONAL.equals(address.getType())) {
					this.personalAddress = address;
				} else if (AddressType.OFFICE.equals(address.getType())) {
					this.officeAddress = address;
				}
			}
		}
	}

	public void clear() {
		this.flowType = null;
		this.customer = null;
		this.personalAddress = null;
		this.officeAddress = null;
	}

	public FlowType getFlowType() {
		return flowType;
	}

	public void setFlowType(FlowType flowType) {
		this.flowType = flowType;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Address getPersonalAddress() {
		return personalAddress;
	}

	public void setPersonalAddress(Address personalAddress) {
		this.personalAddress = personalAddress;
	}

	public Address getOfficeAddress() {
		return officeAddress;
	}

	public void setOfficeAddress(Address officeAddress) {
		this.officeAddress = officeAddress;
	}

}
