package com.example.jpa.controller;


import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/feedback")
public class FeedbackController {

    @PostMapping
    public String addFeedback() {
        return "Feedback submitted";
    }

    @GetMapping("/resource/{resourceId}")
    public String getFeedback(@PathVariable int resourceId) {
        return "Feedback list";
    }
}