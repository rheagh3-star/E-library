package com.example.jpa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.jpa.model.Resource;

public interface ResourceRepository extends JpaRepository<Resource, Long> {

    List<Resource> findByTitleContainingIgnoreCaseOrAuthorContainingIgnoreCase(String title, String author);

}