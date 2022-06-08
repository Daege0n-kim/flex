package com.pg.flex.controller.login;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pg.flex.dto.User;
import com.pg.flex.dto.request.SignUserRequestForm;
import com.pg.flex.dto.response.SignUserResponse;
import com.pg.flex.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestLoginController {

    @Autowired
    private LoginService service;

    @PostMapping("/login")
    public void login(HttpServletResponse response, HttpSession session, SignUserRequestForm requestForm) throws IOException {

        SignUserResponse userResponse = service.login(requestForm);

        if(Objects.isNull(userResponse)) {
            response.sendRedirect("/sign-in");
        } else {
            session.setAttribute("loginId", userResponse.getLoginId());
            session.setAttribute("searchId", userResponse.getSearchId());
            response.sendRedirect("/");
        }
    }

    @PostMapping(value = "/signup")
    public void signup(HttpServletResponse response, SignUserRequestForm requestForm) throws IOException {

        service.signUp(requestForm);
        response.sendRedirect("/sign-in");
    }

    // @GetMapping(value = "/check_id")
    // public int checkId(@RequestParam String id) {

    //     User user = new User();

    //     user.setId(id);
    //     return service.checkId(user);
    // }
    
}
