package com.example.jpa.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/admin")
public class AdminController {

    @GetMapping("/reports")
    public String viewReports() {
        return "System reports";
    }

    @GetMapping("/feedback")
    public String monitorFeedback() {
        return "Feedback monitoring";
    }
}