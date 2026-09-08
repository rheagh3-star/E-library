package com.example.jpa.controller;

import org.springframework.web.bind.annotation.*;
@RestController
@RequestMapping("/borrow")
public class BorrowController {

    @PostMapping("/{resourceId}")
    public String borrowResource(@PathVariable int resourceId) {
        return "Resource borrowed";
    }

    @PostMapping("/return/{borrowId}")
    public String returnResource(@PathVariable int borrowId) {
        return "Resource returned";
    }

    @GetMapping("/history/{userId}")
    public String borrowHistory(@PathVariable int userId) {
        return "Borrow history";
    }
}