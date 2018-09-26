package com.niit.mback.dao;

import java.util.List;

import com.niit.mback.model.User;

public interface UserDao {

	List<User> getAllUserDetails();
	
	User getUserDetail(String id);
	
	void updateUserDetail(User obj);
	
	void addUser(User obj);

	void deleteUser(User entity);
}
