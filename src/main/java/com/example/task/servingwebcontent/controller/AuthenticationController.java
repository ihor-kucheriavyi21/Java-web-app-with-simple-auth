package com.example.task.servingwebcontent.controller;

import com.example.task.servingwebcontent.entity.User;
import com.example.task.servingwebcontent.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AuthenticationController {

    private static final String LOGIN_PAGE = "login";

    private final UserService userService;

    @Autowired
    public AuthenticationController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/login")
    public String openLoginPage() {
        return LOGIN_PAGE;
    }

    @PostMapping("/login")
    public String loginToApp(@ModelAttribute("user") User user, HttpServletRequest httpServletRequest, Model model) {
        if (userService.isUserExist(user)) {
            String userLogin = "login";
            httpServletRequest.getSession(false).setAttribute(userLogin, user.getLogin());
            return "redirect:/greeting";
        } else {
            model.addAttribute("errorMessage", "User doesn't exist");
        }
        return LOGIN_PAGE;
    }

    @GetMapping("/logout")
    public String logoutFromApp(HttpServletRequest httpServletRequest) {
        httpServletRequest.getSession(false).invalidate();
        return "redirect:/login";
    }
}
