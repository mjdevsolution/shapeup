/**
 * 
 */
package com.shapeup.persistence.dao.impl;

import org.springframework.stereotype.Repository;

import com.shapeup.persistence.dao.AbstractJpaDAO;
import com.shapeup.persistence.dao.CustomerDao;
import com.shapeup.persistence.entity.Customer;

/**
 * @author Jeyakaran
 * 
 */
@Repository
public class CustomerDaoImpl extends AbstractJpaDAO<Customer> implements
		CustomerDao {

	public CustomerDaoImpl() {
		super();

		setClazz(Customer.class);
	}

}
