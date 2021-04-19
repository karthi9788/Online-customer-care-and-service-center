package com.cts.customercare.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.customercare.model.Review;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Integer> {

}