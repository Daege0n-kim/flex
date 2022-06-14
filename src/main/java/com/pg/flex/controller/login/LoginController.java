package com.pg.flex.controller.login;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.pg.flex.dto.response.ProductResponse;
import com.pg.flex.dto.response.UserBoardResponse;
import com.pg.flex.service.mypage.MyPageService;
import com.pg.flex.service.shop.ShopService;

@Controller
public class LoginController {

    @Autowired
    private ShopService shopService;

    @Autowired
    private MyPageService myPageService;

    @GetMapping("/")
    public String main(HttpSession session, Model model) {
        List<ProductResponse> product = shopService.getMainProduct();
        List<ProductResponse> productReverse = shopService.getMainProductReverse();
        List<UserBoardResponse> boardList = myPageService.getBoardsForMainPage();

        model.addAttribute("products", product);
        model.addAttribute("productsReverse", productReverse);
        model.addAttribute("boards", boardList);
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
