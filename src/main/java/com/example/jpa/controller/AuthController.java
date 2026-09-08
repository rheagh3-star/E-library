package com.example.jpa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.jpa.model.User;
import com.example.jpa.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class AuthController {

    @Autowired
    private UserRepository userRepository;
    @PostMapping("/signup")
    public String signupUser(@ModelAttribute User user, Model model) {

        User existingUser = userRepository.findByEmail(user.getEmail());

        if (existingUser != null) {
            model.addAttribute("error", "User already exists!");
            return "signup";
        }

        if (user.getRole() == null || user.getRole().isEmpty()) {
            user.setRole("MEMBER");
        }

        userRepository.save(user);

        model.addAttribute("success", "Registration successful! Please login.");
        return "login";
    }

 
    @PostMapping("/login")
    public String loginUser(@RequestParam String email,
                           @RequestParam String password,
                           HttpSession session,
                           Model model) {

        User user = userRepository.findByEmail(email);

        if (user != null && user.getPassword().equals(password)) {

            session.setAttribute("us", user.getEmail());

            if ("ADMIN".equals(user.getRole())) {
                return "redirect:/dashboard";
            } else {
                return "redirect:/user";
            }
        }

        model.addAttribute("error", "Invalid email or password");
        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "login";
    }
}