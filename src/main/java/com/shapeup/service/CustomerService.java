/**
 * 
 */
package com.shapeup.service;

import java.util.List;

import com.shapeup.persistence.entity.Customer;

/**
 * @author Jeyakaran
 * 
 */

public interface CustomerService {

	public abstract Customer update(final Customer customer);

	public abstract void create(final Customer customer);

	public abstract List<Customer> getAllCustomers();

}
