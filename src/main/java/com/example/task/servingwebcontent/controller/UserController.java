package com.example.task.servingwebcontent.controller;

import com.example.task.servingwebcontent.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/viewUsers")
    public String viewUsers(Model model) {
        model.addAttribute("users", userService.getUsers());
        System.out.println(userService.getUsers());
        return "view-users";
    }
}
