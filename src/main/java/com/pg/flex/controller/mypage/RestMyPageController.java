package com.pg.flex.controller.mypage;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pg.flex.dto.request.DeliveryAddressRequestForm;
import com.pg.flex.dto.request.PaymentRequestForm;
import com.pg.flex.service.mypage.MyPageService;

@RestController
public class RestMyPageController {

  @Autowired
  private MyPageService myPageService;

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
  
}
