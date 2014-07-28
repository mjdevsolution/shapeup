/**
 * 
 */
package com.shapeup.form;

import com.shapeup.common.util.AddressType;
import com.shapeup.common.util.CommonUtil;
import com.shapeup.persistence.entity.Address;
import com.shapeup.persistence.entity.Customer;

/**
 * @author Jeyakaran
 * 
 */
public class CustomerForm {

	private Customer customer;
	private Address personalAddress;
	private Address officeAddress;

	public CustomerForm() {

		this.customer = new Customer();

		Address personalAddress = new Address();
		personalAddress.setType(AddressType.PERSONAL);

		Address officeAddress = new Address();
		officeAddress.setType(AddressType.OFFICE);

		this.customer.getAddresses().add(personalAddress);
		this.customer.getAddresses().add(officeAddress);

		this.personalAddress = personalAddress;
		this.officeAddress = officeAddress;

	}

	public CustomerForm(final Customer customer) {
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

	public Customer getCustomer() {
		return customer;
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

}
