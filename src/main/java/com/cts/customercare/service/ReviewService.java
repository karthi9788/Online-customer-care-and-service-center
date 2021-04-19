package com.cts.customercare.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.customercare.model.Review;
import com.cts.customercare.repository.ReviewRepository;


@Service
public class ReviewService {
	
	@Autowired
	private ReviewRepository reviewRepository;
	
	public List<Review> findallreviews() {

		return reviewRepository.findAll();
	}
	public void saveReview(Review review) {

		reviewRepository.save(review);
	}
	
	public void deleteReview(int id) {

		reviewRepository.deleteById(id);
	}
	
	public Review findReviewById(int id) throws Exception {

		Optional<Review> optional = reviewRepository.findById(id);
		Review review = null;
		if (optional.isPresent()) {
			review = optional.get();
		} else {
			throw new Exception("Not Found For Review Id: " + id);
		}
		return review;
	}
	
}