package com.pg.flex.controller.login;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pg.flex.dto.User;
import com.pg.flex.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestLoginController {

    @Autowired
    private LoginService service;

    @PostMapping("/login")
    public void login(HttpServletResponse response, HttpSession session, @RequestParam String login_id, @RequestParam String login_password) throws IOException {

        User user = new User(login_id, login_password);

        String loginInfo = service.login(user);

        if(loginInfo.equals("fail")) {
            session.setAttribute("fail", "fail");
            response.sendRedirect("/sign-in");
        }

        session.setAttribute("userName", loginInfo);
        response.sendRedirect("/");
    }

    @PostMapping(value = "/signup")
    public void signup(HttpServletResponse response, @RequestParam String login_id, @RequestParam String login_password, @RequestParam String user_name, @RequestParam String user_id) throws IOException {

        User user = new User(login_id, login_password, user_name, user_id);

        service.signUp(user);
        response.sendRedirect("/sign-in");
    }

    // @GetMapping(value = "/check_id")
    // public int checkId(@RequestParam String id) {

    //     User user = new User();

    //     user.setId(id);
    //     return service.checkId(user);
    // }
    
}
