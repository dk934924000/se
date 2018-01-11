package com.NoviceTeam.SE.domain.service;

import com.NoviceTeam.SE.domain.DAO.user.UserRepository;
import com.NoviceTeam.SE.domain.ResourceNotFoundException;
import com.NoviceTeam.SE.domain.model.User;
import org.joda.time.DateTime;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.Date;


@Service
@Transactional
public class UserService {
	@Inject
	protected UserRepository userRepository;

	@Inject
	protected PasswordEncoder passwordEncoder;


	public void save(User user, String rawPassword) {
		String password = passwordEncoder.encode(rawPassword);
		user.setPassword(password);

		Date now = new DateTime().toDate();
		if (user.getCreatedAt() == null) {
			user.setCreatedAt(now);
		}

		user.setRoles("ROLE_USER");

		user.setUpdatedAt(now);
		userRepository.save(user);
	}


	@Transactional(readOnly = true)
	public User findOne(Integer id) {
		User user = userRepository.findOne(id);
		if (user == null) {
			throw new ResourceNotFoundException("User [id=" + id
					+ "] is not found.");
		}
		return user;
	}

	@Transactional(readOnly = true)
	public Page<User> findAll(Pageable pageable) {
		Page<User> page = userRepository.findAll(pageable);
		return page;
	}

	@Transactional(readOnly = true)
	public Page<User> findByNameLike(String name, Pageable pageable) {
		String query = name; // TODO escape
		Page<User> page = userRepository.findByNameLike(query, pageable);
		return page;
	}


	public void delete(User user) {
		userRepository.delete(user);
	}

	public User findByUsername(String username){

		return userRepository.findByUserName(username);
	}

	public User findByEmail(String Email){
		return userRepository.findByEmail(Email);
	}
}
