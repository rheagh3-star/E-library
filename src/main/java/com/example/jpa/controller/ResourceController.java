package com.example.jpa.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.jpa.model.Resource;
import com.example.jpa.repository.ResourceRepository;

@Controller
@RequestMapping("/resources")
public class ResourceController {

    @Autowired
    private ResourceRepository resourceRepository;

    // View all resources
    @GetMapping
    public String viewResources(Model model) {

        List<Resource> resources = resourceRepository.findAll();
        model.addAttribute("resources", resources);

        return "resources";
    }

    // Upload page
    @GetMapping("/upload")
    public String uploadPage(Model model) {

        model.addAttribute("resource", new Resource());

        return "uploadResource";
    }

    // Save resource
    @PostMapping("/save")
    public String saveResource(@ModelAttribute Resource resource) {

        resourceRepository.save(resource);

        return "redirect:/resources";
    }

    // Edit resource page
    @GetMapping("/edit/{id}")
    public String editResource(@PathVariable Long id, Model model) {

        Optional<Resource> resource = resourceRepository.findById(id);

        if(resource.isPresent()) {
            model.addAttribute("resource", resource.get());
        }

        return "editResource";
    }


    @PostMapping("/update")
    public String updateResource(@ModelAttribute Resource resource) {

        resourceRepository.save(resource);

        return "redirect:/resources";
    }

    // Delete resource
    @GetMapping("/delete/{id}")
    public String deleteResource(@PathVariable Long id) {

        resourceRepository.deleteById(id);

        return "redirect:/resources";
    }
    @GetMapping("/search")
    public String searchResources(@RequestParam(required=false) String keyword, Model model) {

        if(keyword != null) {

            List<Resource> resources =
                    resourceRepository.findByTitleContainingIgnoreCaseOrAuthorContainingIgnoreCase(keyword, keyword);

            model.addAttribute("resources", resources);
        }

        return "searchResources";
    }

}