package com.pg.flex.controller.style;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StyleController {

    @GetMapping("/style")
    public String Style(){
        return "/style/index";
    }
    
}
