package com.nick.example.controller;

import com.nick.example.domain.Subject;
import com.nick.example.domain.User;
import com.nick.example.repository.SubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/teamtodo")
public class TeamtodoController {
    @Autowired
    private SubjectRepository subjectRepository;

    @GetMapping
    public String loadpage(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        model.addAttribute("subjects", subjectRepository.findSubjectsByAuthor(user));
        return "teamtodo";
    }

    @PostMapping
    public String addTodo(
            @AuthenticationPrincipal User user,
            @RequestParam String title,
            @RequestParam String description,
            Model model
    ) {

        subjectRepository.save(new Subject(title, description, user));
        model.addAttribute("subjects", subjectRepository.findSubjectsByAuthor(user));

        return "teamtodo";
    }
}
