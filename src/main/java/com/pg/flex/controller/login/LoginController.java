package com.pg.flex.controller.login;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/")
    public String main(HttpSession session, Model model) {
        return "/Mainindex";
    }

    @GetMapping(value = "/sign-in")
    public String signIn(HttpSession session) {
        return "/sign-in/sign-in";
    }

    @GetMapping(value = "/logout")
    public String logout(HttpSession session) {

        session.removeAttribute("searchId");
        return "redirect:/";
    }

    @GetMapping(value = "/sign-up")
    public String signUp() {
        return "/sign-up/sign-up";
    }
}
