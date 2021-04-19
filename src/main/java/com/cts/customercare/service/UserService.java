package com.cts.customercare.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.customercare.exception.CustomerCareException;
import com.cts.customercare.model.User;
import com.cts.customercare.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository userRepository;

	int profileId;

	public int loginId(int id) {
		profileId = id;
		return id;
	}

	public void save(User user) {
		userRepository.save(user);
	}

	public int viewId() {
		return profileId;
	}

	public List<User> completeList() {
		List<User> list = userRepository.findAll();
		return list;
	}

	public String login(User user) {
		String pageName = "";
		List<User> lst = completeList();
		if ((user.getFirstName() == null) || (user.getPassword() == null)) {
			return pageName;
		} else {
			for (User u : lst) {
				if (u.getFirstName().equals(user.getFirstName()) && u.getPassword().equals(user.getPassword())) {
					if (u.getUserType().equalsIgnoreCase("User")) {
						loginId(u.getUserId());
						pageName = "redirect:/complaintRegister";
					} else if (u.getUserType().equalsIgnoreCase("Support Analyst")) {
						loginId(u.getUserId());
						pageName = "redirect:/analystHome";
					} else if (u.getUserType().equalsIgnoreCase("Admin")) {
						loginId(u.getUserId());
						pageName = "redirect:/adminhome";
					}
				}
			}
			return pageName;
		}
	}

	public List<String> getAllUserNames() {
		List<String> userNames = new ArrayList<>();
		List<User> user = completeList();
		for (User user1 : user) {
			userNames.add(user1.getFirstName());
		}
		return userNames;
	}

	public List<String> getAllPasswords() {
		List<String> passwords = new ArrayList<>();
		List<User> user = completeList();
		for (User user1 : user) {
			passwords.add(user1.getPassword());
		}
		return passwords;
	}

	public void saveUser(User user) {

		userRepository.save(user);
	}

	public User findUserById(int id) throws CustomerCareException {

		Optional<User> optional = userRepository.findById(id);
		User category = null;
		if (optional.isPresent()) {
			category = optional.get();
		} else

		{
			throw new CustomerCareException("Not Found For User Id: " + id);
		}
		return category;
	}

	public String forgotId(User user) {
		List<User> list = completeList();
		String name = "Your User Name for Login '";
		for (User u : list) {
			if (u.getEmail().equals(user.getEmail())) {
				if (u.getAnswer().equals(user.getAnswer()) && u.getSecretQuestion().equals(user.getSecretQuestion())) {
					name = name + u.getFirstName() + "'";
					return name;
				}
			}
		}
		return "User Not Found";
	}

	int userId;

	public boolean resetPassword(User user) {
		List<User> list = completeList();
		for (User u : list) {
			if (user.getFirstName().equals(u.getFirstName())) {
				if (user.getEmail().equals(u.getEmail()) && user.getContactNumber().equals(u.getContactNumber())
						&& user.getSecretQuestion().equals(u.getSecretQuestion())
						&& user.getAnswer().equals(u.getAnswer())) {
					userId = u.getUserId();
					return true;
				}
			}
		}
		return false;
	}

	public void password(String newPassword) {
		List<User> list = completeList();
		for (User u : list) {
			if (userId == u.getUserId()) {
				u.setPassword(newPassword);
				userRepository.save(u);
			}
		}

	}
}