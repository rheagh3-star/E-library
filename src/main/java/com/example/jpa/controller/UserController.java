package com.example.jpa.controller;


import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/users")
public class UserController {

    @GetMapping("/{id}")
    public String getUserProfile(@PathVariable int id) {
        return "User profile details";
    }

    @PutMapping("/{id}")
    public String updateUser(@PathVariable int id) {
        return "User updated successfully";
    }

    @DeleteMapping("/{id}")
    public String deleteUser(@PathVariable int id) {
        return "User deleted";
    }
}