package com.pg.flex.controller.mypage;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpResponse;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pg.flex.dto.UserDetail;
import com.pg.flex.dto.UserImage;
import com.pg.flex.dto.request.DeliveryAddressRequestForm;
import com.pg.flex.dto.request.PaymentRequestForm;
import com.pg.flex.dto.response.Cart;
import com.pg.flex.dto.response.DeliveryResponse;
import com.pg.flex.dto.response.Like;
import com.pg.flex.dto.response.PaymentResponse;
import com.pg.flex.dto.response.SignUserResponse;
import com.pg.flex.dto.response.UserDetailResponse;
import com.pg.flex.service.mypage.MyPageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.RequestResponseBodyMethodProcessor;

@Controller
public class MyPageController {

  @Autowired
  private MyPageService myPageService;

  @Value("${upload.file.path}")
  private String UPLOAD_FILE_PATH;

  @GetMapping(value = "/post_mypage")
  public String postMyPage() {
    return "/mypage/post_mypage";
  }

  @GetMapping(value = "/mypageUserImage")
  public String mypageUserImage(HttpSession session, Model model) {

    String userId = (String) session.getAttribute("loginId");
    UserDetailResponse userDetail = myPageService.getUserDetail(userId);
    
    // String path = "/mypage/uploadfile/" + userDetail.getSavedFileName();
    
    // model.addAttribute("path", path);
    model.addAttribute("userDetail", userDetail);
    return "/mypage/mypageUserImage";
  }

  @GetMapping(value = "/post_board")
  public String postBoard() {
    return "/mypage/post_board";
  }

  @GetMapping(value = "/Baguni")
  public String postBaguni(HttpSession session, Model model) {

    String userId = (String)session.getAttribute("loginId");

    UserDetailResponse userDetail = myPageService.getUserDetail(userId);
    List<Cart> cartList = myPageService.getCartList(userId);
    
    model.addAttribute("userDetail", userDetail);
    model.addAttribute("cartLike", cartList);
    return "/mypage/Baguni/Baguni";
  }

  @GetMapping(value = "/Like")
  public String postLike(HttpSession session, Model model) {
    String userId = (String)session.getAttribute("loginId");
    UserDetailResponse userDetail = myPageService.getUserDetail(userId);

    List<Like> likes = myPageService.getLikesByUserId(userId);
    
    model.addAttribute("likes", likes);
    model.addAttribute("userDetail", userDetail);
    return "/mypage/Like/Like";
  }

  @GetMapping(value = "/Posting")
  public String postPosting() {
    return "/mypage/Posting/Posting";
  }

  @GetMapping(value = "/Purchase-History")
  public String PurchaseHistory(HttpSession session, Model model) {
    String userId = (String)session.getAttribute("loginId");
    UserDetailResponse userDetail = myPageService.getUserDetail(userId);

    model.addAttribute("userDetail", userDetail);
    return "/mypage/Purchase-History/Purchase-History";
  }

  @GetMapping(value = "/Related_post")
  public String RelatedPost() {
    return "/mypage/Related_Post/Related_post";
  }

  @GetMapping(value = "/SelectProduct")
  public String SelectProduct() {
    return "/mypage/SelectProduct/SelectProduct";
  }

  @PostMapping(value = "/post_mypage")
  public String postMyInfrom(HttpSession session, @RequestParam("myImage") MultipartFile multipartFile) {

    String prefix = multipartFile.getOriginalFilename().substring(
        multipartFile.getOriginalFilename().lastIndexOf(".") + 1, multipartFile.getOriginalFilename().length());
    String fileName = UUID.randomUUID().toString() + "." + prefix;
    String pathName = UPLOAD_FILE_PATH + "/user-image" + fileName;

    String userId = (String) session.getAttribute("loginId");
    String originalFileName = multipartFile.getOriginalFilename();
    String savedFileName = fileName;

    File dest = new File(pathName);

    try {
      multipartFile.transferTo(dest);
      UserImage userImage = new UserImage(userId, originalFileName, savedFileName);
      myPageService.postUserImage(userImage);
    } catch (IllegalStateException | IOException e) {
      e.printStackTrace();
    }

    return "redirect:/mypage";
  }

  /* 배송지 관련 API */
  @GetMapping(value = "/Shipping")
  public String postShopping(HttpSession session, Model model) {
    String userId = (String)session.getAttribute("loginId");

    List<DeliveryResponse> deliveryList = myPageService.getDeliveryAddress(userId);

    if(!Objects.isNull(deliveryList)) {
      model.addAttribute("deliveryList", deliveryList);
    }
    return "/mypage/Shipping/Shipping";
  }

  @GetMapping(value = "/Add-Shipping")
  public String AddShipping() {
    return "/mypage/Add-Shipping/Add-Shipping";
  }

  @PostMapping(value = "/add-delivery-address")
  public void AddDeliveryAddress(HttpServletResponse response, HttpSession session, DeliveryAddressRequestForm requestForm) throws IOException {
    requestForm.setUserId((String)session.getAttribute("loginId"));
    myPageService.postDeliveryAddress(requestForm);

    response.sendRedirect("/Shipping");
  }
  /* 배송지 관련 API */

  /* 결제수단 관련 API */
  @GetMapping(value = "/Payment")
  public String movePaymentPage(HttpSession session, Model model) {

    List<PaymentResponse> paymentList = myPageService.getPaymentsByUserId((String)session.getAttribute("loginId"));

    model.addAttribute("payments", paymentList);
    return "/mypage/Payment/Payment";
  }

  @GetMapping(value = "/Add-Payment")
  public String moveAddPaymentPage() {
    return "/mypage/Add-Payment/Add-Payment";
  }

  @PostMapping(value = "/add-payment")
  public void postPayment(HttpServletResponse response, HttpSession session, PaymentRequestForm requestForm) throws IOException {

    requestForm.setUserId((String)session.getAttribute("loginId"));
    myPageService.postPayment(requestForm);

    response.sendRedirect("/Payment");
  }
  /* 결제수단 관련 API */
}
