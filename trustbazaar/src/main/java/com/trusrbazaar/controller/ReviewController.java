package com.trusrbazaar.controller;

import com.trusrbazaar.model.Review;
import com.trusrbazaar.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/reviews")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    
    @GetMapping("/list")
    public String listReviews(Model model) {
        List<Review> reviews = reviewService.getAllReviews();
        model.addAttribute("reviews", reviews);
        return "reviews/list";
    }

    
    @GetMapping("/add")
    public String showAddReviewForm(Model model) {
        model.addAttribute("review", new Review());
        return "reviews/add";
    }

    
    @PostMapping("/add")
    public String addReview(@ModelAttribute Review review) {
        reviewService.saveReview(review);
        return "redirect:/reviews/list";
    }
}