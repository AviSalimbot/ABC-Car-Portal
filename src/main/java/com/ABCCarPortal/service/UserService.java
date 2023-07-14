package com.ABCCarPortal.service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.ABCCarPortal.model.Car;
import com.ABCCarPortal.model.User;
import com.ABCCarPortal.repository.RoleRepository;
import com.ABCCarPortal.repository.UserRepository;

import javax.transaction.Transactional;

@Service
@Transactional
public class UserService {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	RoleRepository roleRepository;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	public String save(User user) {
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		
		userRepository.save(user);
		
		return "User saved successfully";
	}
	
	public User findLoginUser(String username) {
	
		return userRepository.findByUserName(username);
		
	}
	
	public List<User> showAllUser(){
		
		return userRepository.findAll();
	}
	
	public void update(User user) {
		
		userRepository.save(user);
		
	}
	
	public Optional<User> getUserInfo(long uid){
		
		return userRepository.findById(uid);
		
	}
	
	public void deleteUser(long uid) {
		
		userRepository.deleteById(uid);
	}
	
	public void assignNewRole(User user, String role) {
		
		user.getRoles().clear();
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles(role)));
		userRepository.save(user);
	}
	
	public List<User> searchByName(String key) {
		return userRepository.searchByName(key);
	}
	
	public List<User> searchByFirstName(String key) {
		return userRepository.searchByFirstName(key);
	}

	public List<User> searchByLastName(String key) {
		return userRepository.searchByLastName(key);
	}
	
	public User getDetailsById(Long id) {
		return userRepository.findById(id).get();
	}

}
