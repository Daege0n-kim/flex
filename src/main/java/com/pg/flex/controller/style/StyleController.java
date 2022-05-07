package com.pg.flex.controller.style;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.pg.flex.dto.Style;
import com.pg.flex.service.style.StyleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StyleController {

    @Autowired
    private StyleService service;

    @GetMapping("/style")
    public String Style(Model model){

        List<Style> result = service.getPosts();


        model.addAttribute("posts", result);
        return "/style/index";
    }
    
}
