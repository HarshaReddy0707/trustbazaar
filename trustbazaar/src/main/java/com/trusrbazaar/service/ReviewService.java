package com.trusrbazaar.service;

import com.trusrbazaar.model.Review;
import com.trusrbazaar.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    // Save or update review
    public Review saveReview(Review review) {
        return reviewRepository.save(review);
    }

 // Get all reviews
    public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }

    // Get review by id
    public Optional<Review> getReviewById(Long id) {
        return reviewRepository.findById(id);
    }

    // Delete review by id
    public void deleteReview(Long id) {
        reviewRepository.deleteById(id);
    }

    // Get reviews by product
    public List<Review> getReviewsByProduct(Long productId) {
        return reviewRepository.findByProductId(productId);
    }
}
