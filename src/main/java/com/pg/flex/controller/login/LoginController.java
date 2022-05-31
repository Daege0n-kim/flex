package com.pg.flex.controller.login;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.pg.flex.dto.Product;
import com.pg.flex.dto.Style;
import com.pg.flex.dto.User;
import com.pg.flex.service.shop.ShopService;
import com.pg.flex.service.style.StyleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    private ShopService shopService;
    private StyleService service;

    @GetMapping("/")
    public String main(HttpSession session, Model model) {

        List<Product> result =  shopService.getProducts();
        List<Style> result2 = service.getMainPosts();

        model.addAttribute("productList", result);
        model.addAttribute("posting", result2);
        
        
    return "/Mainindex";



    }

    @GetMapping("/home")
    public String homeIndex() {
        return "/Mainindex";
    }

    @GetMapping(value = "/sign-in")
    public String signIn(HttpSession session) {
        return "/sign-in/sign-in";
    }

    @GetMapping(value = "/logout")
    public String logout(HttpSession session) {

        session.removeAttribute("userName");
        return "redirect:/";
    }

    @GetMapping(value = "/sign-up")
    public String signUp() {
        return "/sign-up/sign-up";
    }
}
