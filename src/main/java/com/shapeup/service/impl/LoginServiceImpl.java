package com.shapeup.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shapeup.persistence.dao.UserDao;
import com.shapeup.persistence.entity.User;
import com.shapeup.persistence.entity.UserRole;
import com.shapeup.security.LoginUser;

@Service
public class LoginServiceImpl implements UserDetailsService {

	@Resource
	private UserDao userDao;

	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException, DataAccessException {

		LoginUser loginUser = null;
		User user = userDao.findByUsername(username);
		if (user == null)
			throw new UsernameNotFoundException("user not found");

		return buildUserFromUserEntity(user);
	}

	@Transactional(readOnly = true)
	private LoginUser buildUserFromUserEntity(User user) {

		String username = user.getName();
		String password = user.getPassword();
		String name = user.getName();

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (UserRole role : user.getUserRoles()) {
			authorities.add(new GrantedAuthorityImpl(role.getUserRole()
					.getUserRole()));
		}

		LoginUser sUser = new LoginUser(username, password, name, authorities);

		return sUser;
	}
}