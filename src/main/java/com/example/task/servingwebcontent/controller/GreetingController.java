package com.example.task.servingwebcontent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
public class GreetingController {

    @GetMapping("/greeting")
    public String greeting(Model model, HttpServletRequest httpServletRequest) {
        Object name = httpServletRequest.getSession(false).getAttribute("login");
        model.addAttribute("login", name);
        return "greeting";
    }

}