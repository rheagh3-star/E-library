package com.example.jpa.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/membership")
public class MembershipController {

    @PostMapping("/purchase")
    public String purchaseMembership() {
        return "Membership purchased";
    }

    @GetMapping("/status/{userId}")
    public String membershipStatus(@PathVariable int userId) {
        return "Membership status";
    }
}