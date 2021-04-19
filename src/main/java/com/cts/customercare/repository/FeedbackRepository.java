package com.cts.customercare.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.customercare.model.Feedback;
import com.cts.customercare.model.Review;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, Integer> {

}