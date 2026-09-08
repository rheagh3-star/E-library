package com.example.jpa.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.jpa.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

import com.example.jpa.repository.ResourceRepository;
import com.example.jpa.repository.BorrowRepository;
import com.example.jpa.repository.MembershipRepository;

import com.example.jpa.repository.FeedbackRepository;

@Controller
public class HomeController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ResourceRepository resourceRepository;

    @Autowired
    private BorrowRepository borrowRepository;

    @Autowired
    private MembershipRepository membershipRepository;

    
    @Autowired
    private FeedbackRepository feedbackRepository;

    

    // Login Page
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    // Signup Page
    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    // Dashboard Page
    @GetMapping("/dashboard")
    public String dashboard(Model model) {

        model.addAttribute("totalUsers", userRepository.count());
        model.addAttribute("totalResources", resourceRepository.count());
        model.addAttribute("totalBorrows", borrowRepository.count());
        model.addAttribute("totalMemberships", membershipRepository.count());
 
        model.addAttribute("totalFeedback", feedbackRepository.count());

        return "dashboard";
    }

    // User Profile Page
    @GetMapping("/user")
    public String userPage(HttpSession session, Model model) {
        return "user";
    }
        @GetMapping("/")
        public String home() {
            return "navbar"; // dashboard.jsp
        }

        @GetMapping("/about")
        public String about() {
            return "about";
        }

        @GetMapping("/contact")
        public String contact() {
            return "contact";
        }
    }
