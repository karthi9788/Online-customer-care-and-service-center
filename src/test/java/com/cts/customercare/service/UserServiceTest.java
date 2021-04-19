package com.cts.customercare.service;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.cts.customercare.model.User;

@SpringBootTest
public class UserServiceTest {

	@Autowired
	UserService userService;

	@Before
	public void setUp() throws Exception {
		userService = new UserService();
	}

	@Test
	public void testValidUser() {
		User user = new User();
		user.setUserId(1001);
		user.setDob("11-12-2012");
		user.setFirstName("Diva");
		user.setPassword("diva");
		userService.save(user);

		assertNotNull(userService.login(user));
	}

	@Test
	public void testInvalidUserName() {
		User user = new User();
		user.setFirstName("Divahar");
		user.setPassword("diva");

		assertNull(userService.login(user));
	}

	@Test
	public void testInvalidPassword() {
		User user = new User();
		user.setFirstName("Diva");
		user.setPassword("12345");

		assertNull(userService.login(user));
	}

	@Test
	public void test() {
		fail("Not yet implemented");
	}

}