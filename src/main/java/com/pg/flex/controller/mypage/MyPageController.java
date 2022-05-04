package com.pg.flex.controller.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {
    
    @GetMapping("/mypage")
    public String myPage(){
        return "/mypage/index";

    }
}
