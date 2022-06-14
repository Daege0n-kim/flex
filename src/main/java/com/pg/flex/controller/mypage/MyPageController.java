package com.pg.flex.controller.mypage;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pg.flex.dto.UserImage;
import com.pg.flex.dto.query.PostBoardQueryForm;
import com.pg.flex.dto.query.RelatedProductQuery;
import com.pg.flex.dto.request.DeliveryAddressRequestForm;
import com.pg.flex.dto.request.PaymentRequestForm;
import com.pg.flex.dto.request.PostingRequestForm;
import com.pg.flex.dto.request.UpdateUserInfoRequestForm;
import com.pg.flex.dto.response.Cart;
import com.pg.flex.dto.response.DeliveryResponse;
import com.pg.flex.dto.response.Like;
import com.pg.flex.dto.response.OrderedResponse;
import com.pg.flex.dto.response.PaymentResponse;
import com.pg.flex.dto.response.ProductResponse;
import com.pg.flex.dto.response.RelatedResponse;
import com.pg.flex.dto.response.UserBoardResponse;
import com.pg.flex.dto.response.UserDetailResponse;
import com.pg.flex.service.mypage.MyPageService;
import com.pg.flex.service.shop.ShopService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MyPageController {

  @Autowired
  private MyPageService myPageService;

  @Autowired
  private ShopService shopService;

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

    List<UserBoardResponse> boards = myPageService.getBoardsByUserId(userId);

    for(UserBoardResponse board: boards) {
      List<String> related = myPageService.getRelatedProductByBoardIndex(board.getBoardIndex());
      board.setRelatedThumb(related);
    }

    model.addAttribute("totalPosting", boards.size());
    model.addAttribute("userDetail", userDetail);
    model.addAttribute("boards", boards);
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

    int index = 0;

    for(Cart cart: cartList) {
      String changeName = changeBrandName(cart.getProductBrand());

      cartList.get(index).setProductBrand(changeName);
      index++;
    }
    
    model.addAttribute("userDetail", userDetail);
    model.addAttribute("cartLike", cartList);
    return "/mypage/Baguni/Baguni";
  }

  @GetMapping(value = "/Like")
  public String postLike(HttpSession session, Model model) {
    String userId = (String)session.getAttribute("loginId");
    UserDetailResponse userDetail = myPageService.getUserDetail(userId);

    List<Like> likes = myPageService.getLikesByUserId(userId);

    int index = 0;

    for(Like like: likes) {
      String changeId = changeBrandName(like.getBrandName());
      likes.get(index).setBrandName(changeId);
      index++;
    }
    
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
    List<OrderedResponse> orders = myPageService.getOrderedList(userId);

    int index = 0;

    for(OrderedResponse response: orders) {
      String changeName = changeBrandName(response.getBrandName());

      orders.get(index).setBrandName(changeName);
      index++;
    }

    model.addAttribute("orders", orders);
    model.addAttribute("userDetail", userDetail);
    return "/mypage/Purchase-History/Purchase-History";
  }

  @GetMapping(value = "/Related_post")
  public String RelatedPost() {
    return "/mypage/Related_Post/Related_post";
  }

  @GetMapping(value = "/SelectProduct")
  public String SelectProduct(HttpSession session, Model model) {
    String userId = (String)session.getAttribute("loginId");
    UserDetailResponse userDetail = myPageService.getUserDetail(userId);

    List<ProductResponse> products = shopService.getProducts();

    int productIndex = 0;
    for(ProductResponse response: products) {
      String changeName = changeBrandName(response.getBrandName());

      products.get(productIndex).setBrandName(changeName);
      productIndex++;
    }

    model.addAttribute("products", products);
    model.addAttribute("userDetail", userDetail);
    return "/mypage/SelectProduct/SelectProduct";
  }

  @PostMapping(value = "/post_mypage")
  public String postMyInfrom(HttpSession session, @RequestParam("myImage") MultipartFile multipartFile) {

    String prefix = multipartFile.getOriginalFilename().substring(
        multipartFile.getOriginalFilename().lastIndexOf(".") + 1, multipartFile.getOriginalFilename().length());
    String fileName = UUID.randomUUID().toString() + "." + prefix;
    String pathName = UPLOAD_FILE_PATH + "/user-image/" + fileName;

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
    UserDetailResponse response = myPageService.getUserDetail(userId);

    if(!Objects.isNull(deliveryList)) {
      model.addAttribute("deliveryList", deliveryList);

  }
    model.addAttribute("userDetail", response);
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
    String userId = (String)session.getAttribute("loginId");

    List<PaymentResponse> paymentList = myPageService.getPaymentsByUserId((String)session.getAttribute("loginId"));
    UserDetailResponse response = myPageService.getUserDetail(userId);

    model.addAttribute("userDetail", response);
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

  @GetMapping(value = "/edit-profile")
  public String editProfile(HttpSession session, Model model) {
    String userId = (String)session.getAttribute("loginId");

    UserDetailResponse response = myPageService.getUserDetail(userId);

    model.addAttribute("userDetail", response);
    return "/mypage/EditProfile/index";
  }

  @PostMapping(value = "/update-user-inform")
  public void updateUserInform(HttpServletResponse response, UpdateUserInfoRequestForm requestForm) throws IOException {
    myPageService.updateUserInform(requestForm);

    response.sendRedirect("/mypageUserImage");
  }

  public String changeBrandName(String brandName) {
    String changedBrandName = "";

    switch (brandName) {
      case "나이키":
      changedBrandName = "Nike";
      break;

      case "아디다스":
      changedBrandName = "Adidas";
      break;

      case "스톤아일랜드":
      changedBrandName = "Stone Island";
      break;
    }

    return changedBrandName;
  }

  @PostMapping(value = "/upload-post")
  public void uploadPost(HttpSession session, HttpServletResponse response, PostingRequestForm requestForm) throws IOException {

    String prefix = requestForm.getPostSavedFile().getOriginalFilename().substring(
      requestForm.getPostSavedFile().getOriginalFilename().lastIndexOf(".") + 1, requestForm.getPostSavedFile().getOriginalFilename().length());
    String fileName = UUID.randomUUID().toString() + "." + prefix;
    String pathName = UPLOAD_FILE_PATH + "/board-images/" + fileName;

    String userId = (String) session.getAttribute("loginId");
    String savedFileName = fileName;

    File dest = new File(pathName);

    try {
      requestForm.getPostSavedFile().transferTo(dest);
      PostBoardQueryForm query = new PostBoardQueryForm(requestForm.getPostContent(), savedFileName, userId);
      myPageService.postBoard(query);
      System.out.println(query.getBoardIndex());
      List<RelatedProductQuery> relatedQurey = new ArrayList<>();

      for(String item: requestForm.getProductIndex()) {
        int productIndex = Integer.parseInt(item);

        RelatedProductQuery relatedQuery = new RelatedProductQuery(query.getBoardIndex(), productIndex, userId);
        relatedQurey.add(relatedQuery);
      }
      myPageService.postRelatedProduct(relatedQurey);
    } catch (IllegalStateException e) {
      e.printStackTrace();
    }

    response.sendRedirect("/style");
  }
}
