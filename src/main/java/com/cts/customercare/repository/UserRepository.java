package com.cts.customercare.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.customercare.model.User;

@Repository
public interface UserRepository extends JpaRepository<User,Integer>{

}