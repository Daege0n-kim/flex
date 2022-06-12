package com.pg.flex.controller.shop;

import java.io.IOException;
import java.security.Provider.Service;
import java.util.Objects;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pg.flex.dto.request.IsLiked;
import com.pg.flex.dto.response.IsLikedResponse;
import com.pg.flex.service.shop.ShopService;

@RestController
public class RestShopController {

  @Autowired
  private ShopService service;

  @GetMapping(value = "/addLike")
  public String addLike(HttpSession session, @RequestParam("productIndex") int productIndex) {
    String isUserLogin = (String)session.getAttribute("loginId");

    if(Objects.isNull(isUserLogin)) return "로그인 필요.";

    IsLiked isLikedRequest = new IsLiked(productIndex, isUserLogin);

    IsLikedResponse isLiked = service.isLiked(isLikedRequest);

    if(Objects.isNull(isLiked)) {
      service.addLike(isLikedRequest);
      return "liked";
    } else {
      service.deleteLike(isLiked);
      return "unLike";
    }
  }

  @GetMapping("/addToCart")
  public void addToCart(HttpSession session, HttpServletResponse response, @RequestParam("productIndex") int productIndex) throws IOException {

    String userId = (String)session.getAttribute("loginId");

    IsLiked addToCart = new IsLiked(productIndex, userId);

    service.addToCart(addToCart);
    response.sendRedirect("/Baguni");
  }

}
