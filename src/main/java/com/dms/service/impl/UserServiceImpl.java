/**
 * 
 */
package com.dms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dms.persistence.dao.UserDao;
import com.dms.service.UserService;

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
