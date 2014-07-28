/**
 * 
 */
package com.shapeup.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shapeup.persistence.dao.CustomerDao;
import com.shapeup.persistence.entity.Customer;
import com.shapeup.service.CustomerService;

/**
 * @author Jeyakaran
 * 
 */
@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Resource
	private CustomerDao customerDao;

	@Override
	public void create(final Customer customer) {
		this.customerDao.create(customer);
	}

	@Override
	public Customer update(final Customer customer) {
		return this.customerDao.update(customer);
	}

	@Override
	public List<Customer> getAllCustomers() {
		return this.customerDao.findAll();
	}

	@Override
	public Customer getCustomerById(final Long customerId) {
		return this.customerDao.findById(customerId);
	}

}
