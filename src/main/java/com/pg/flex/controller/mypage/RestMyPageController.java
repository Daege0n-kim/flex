package com.pg.flex.controller.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pg.flex.dto.request.AddToCartFromLike;
import com.pg.flex.dto.request.CartIndexForPurchase;
import com.pg.flex.dto.request.DeliveryAddressRequestForm;
import com.pg.flex.dto.request.IsLiked;
import com.pg.flex.dto.request.PaymentRequestForm;
import com.pg.flex.dto.response.Cart;
import com.pg.flex.dto.response.CartResponse;
import com.pg.flex.dto.response.CartResponseWithPrice;
import com.pg.flex.dto.response.IsLikedResponse;
import com.pg.flex.dto.response.PurchaseResponse;
import com.pg.flex.service.mypage.MyPageService;
import com.pg.flex.service.shop.ShopService;

@RestController
public class RestMyPageController {

  @Autowired
  private MyPageService myPageService;

  @Autowired
  private ShopService shopService;

  /* Delivery */
  @PostMapping("/delete_delivery_address")
  public void deleteDeliveryAddress(HttpServletResponse response, @RequestParam int deliveryIndex) throws IOException {
    int result = myPageService.deleteDeliveryAddress(deliveryIndex);
    
    if(result > 0) response.sendRedirect("/Shipping");
    
  }
  
  @PostMapping("/update_delivery_address")
  public void updateDeliveryAddress(HttpSession session, DeliveryAddressRequestForm requestForm) {
    
    requestForm.setUserId((String)session.getAttribute("loginId"));
    myPageService.updateDeliveryAddress(requestForm);
    
    return;
  }
  /* Delivery */

  /* Payment */
  @PostMapping(value = "/delete_payment")
  public void deletePayment(HttpServletResponse response, PaymentRequestForm requestForm) throws IOException {
    
    int result = myPageService.deletePayment(requestForm);

    if (result > 0) response.sendRedirect("/Payment");
  }

  @PostMapping(value = "/update_default_payment")
  public void updateDefaultPayment(HttpServletResponse response, PaymentRequestForm requestForm) throws IOException {
    myPageService.updateDefaultPayment(requestForm);

    response.sendRedirect("/Payment");
  }
  /* Payment */

  @GetMapping(value = "/deleteCart")
  public void deleteCart(HttpServletResponse response, @RequestParam("cartIndex") int cartIndex) throws IOException {
    myPageService.deleteCart(cartIndex);
    
    response.sendRedirect("/Baguni");
  }

  @GetMapping(value = "increaseCart")
  public int increaseCart(@RequestParam("cartIndex") int cartIndex) {
    int result = myPageService.increaseCart(cartIndex);
    int count = 0;

    if(result > 0) {
      count = myPageService.getCartCount(cartIndex);
    }

    return count;
  }

  @GetMapping(value = "decreaseCart")
  public int decreaseCart(@RequestParam("cartIndex") int cartIndex) {
    int result = myPageService.decreaseCart(cartIndex);
    int count = 0;

    if(result > 0) {
      count = myPageService.getCartCount(cartIndex);
    }

    return count;
  }

  @GetMapping(value = "/deleteFromLike")
  public void deleteFromLike(@RequestParam("likeIndex") int likeIndex) {
    myPageService.deleteFromLike(likeIndex);
  }

  @PostMapping(value = "/addToCartFromLike")
  public void addToCartFromLike(HttpSession session, AddToCartFromLike requestForm) {

      IsLiked addToCart = new IsLiked(requestForm.getProductIndex(), (String)session.getAttribute("loginId"));
      shopService.addToCart(addToCart);

      IsLikedResponse deleteLike = new IsLikedResponse();
      deleteLike.setLikeIndex(requestForm.getLikeIndex());
      shopService.deleteLike(deleteLike);

  }

  @PostMapping(value = "/addToCartAll")
  public void addToCartAll(@RequestBody List<AddToCartFromLike> requestForm) {
    shopService.addToCartAll(requestForm);
    myPageService.deleteFromLikeAll(requestForm);
  }

  @PostMapping(value = "/purchaseAll")
  public int purchaseAll(HttpServletResponse response, @RequestBody List<CartIndexForPurchase> requestForm, Model model) throws IOException {

    List<CartResponseWithPrice> lists = myPageService.getCartListByCartIndex(requestForm);

    int totalPrice = 0;

    for(CartResponseWithPrice item : lists) {
      totalPrice += item.getProductPrice();
    }

    return totalPrice;
  }
  
}
