/**
 * 
 */
package com.shapeup.persistence.dao;

import java.util.List;

import com.shapeup.persistence.entity.Customer;
import com.shapeup.persistence.entity.User;

/**
 * @author Jeyakaran
 * 
 */

public interface CustomerDao {

	Customer findById(long id);

	List<Customer> findAll();

	void create(Customer entity);

	Customer update(Customer entity);

	void delete(Customer entity);

	void deleteById(long entityId);

}
