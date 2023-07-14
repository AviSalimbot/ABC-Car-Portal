package com.ABCCarPortal.service;

import java.util.HashSet;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.ABCCarPortal.model.User;
import com.ABCCarPortal.repository.RoleRepository;
import com.ABCCarPortal.repository.UserRepository;

@RunWith(MockitoJUnitRunner.class)
public class UserServiceTest {
	
	@InjectMocks
	UserService userService;
	
	@Mock
	RoleRepository roleRepository;
	
	@Mock
	PasswordEncoder passwordEncoder;
	
	@Mock
	UserRepository userRepository;
	
	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
	public void saveRegisterUserData() {
		User user = new User();
		user.setId((long) 1);
		user.setFirstName("Test ");
		user.setLastName("User");
		user.setUserName("test");
		user.setEmail("test@gmail.com");
		String encodedPassword = passwordEncoder.encode("Test");
		user.setPassword(encodedPassword);
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		Mockito.when(userRepository.save(user)).thenReturn(user);
		String userResponse = userService.save(user);
		Assert.assertEquals("User saved successfully", userResponse);
	}
	
	@Test
	public void registerRetrieval() {
		User user = new User();
		String userName = "test";
		user.setUserName(userName);
		Mockito.when(userRepository.findByUserName(userName)).thenReturn(user);
		User loginUser = userService.findLoginUser(userName);
		Assert.assertEquals(user, loginUser);
	}
	
}
