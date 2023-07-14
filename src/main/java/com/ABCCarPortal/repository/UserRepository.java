package com.ABCCarPortal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ABCCarPortal.model.Car;
import com.ABCCarPortal.model.User;

public interface UserRepository extends JpaRepository<User, Long>{

	User findByUserName(String name);
	
	@Query(value = "SELECT * FROM user"
	 		+ " WHERE first_name LIKE %:key%"
	 		+ " OR last_Name LIKE %:key%", nativeQuery = true)
	public List<User> searchByName(@Param("key") String key);
	
	@Query(value = "SELECT * FROM user"
	 		+ " WHERE first_name LIKE %:key%", nativeQuery = true)
	public List<User> searchByFirstName(@Param("key") String key);
	
	@Query(value = "SELECT * FROM user"
	 		+ " WHERE last_name LIKE %:key%", nativeQuery = true)
	public List<User> searchByLastName(@Param("key") String key);
	
}
