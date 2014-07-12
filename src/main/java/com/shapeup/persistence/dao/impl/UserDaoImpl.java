/**
 * 
 */
package com.shapeup.persistence.dao.impl;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaQuery;

import org.springframework.stereotype.Repository;

import com.shapeup.persistence.dao.AbstractJpaDAO;
import com.shapeup.persistence.dao.UserDao;
import com.shapeup.persistence.entity.User;

/**
 * @author Jeyakaran
 * 
 */
@Repository
public class UserDaoImpl extends AbstractJpaDAO<User> implements UserDao {

	public UserDaoImpl() {
		super();

		setClazz(User.class);
	}

	@Override
	public void getUser() {
		getEntityManager().find(User.class, new Long(1));
	}

	@Override
	public User findByUsername(final String username) {
		String sql = "SELECT u FROM User u WHERE u.username =:username";

		TypedQuery<User> createQuery = getEntityManager().createQuery(sql,
				User.class);
		createQuery.setParameter("username", username);

		return createQuery.getSingleResult();
	}

}
