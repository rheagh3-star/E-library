package com.example.jpa.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/search")
public class SearchController {

    @GetMapping
    public String searchResources(@RequestParam String keyword) {
        return "Search results for " + keyword;
    }
}
