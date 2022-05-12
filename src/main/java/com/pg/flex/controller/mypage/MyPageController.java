package com.pg.flex.controller.mypage;

import java.util.Objects;

import javax.servlet.http.HttpSession;

import com.pg.flex.dto.UserDetail;
import com.pg.flex.service.mypage.MyPageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {

    @Autowired
    private MyPageService myPageService;


    @GetMapping("/mypage")
    public String myPage(HttpSession session, Model model){
        String userId = (String)session.getAttribute("loginId");

        UserDetail userDetail = myPageService.getUserDetail(userId);

        model.addAttribute("userDetail", userDetail);
        return "/mypage/index";

    }
}
