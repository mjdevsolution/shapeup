/**
 * 
 */
package com.shapeup.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shapeup.persistence.dao.UserDao;
import com.shapeup.service.UserService;

/**
 * @author Jeyakaran
 * 
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;

	@Override
	public void getUser() {
		userDao.getUser();
	}

}
