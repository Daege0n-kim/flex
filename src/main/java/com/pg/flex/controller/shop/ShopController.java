package com.pg.flex.controller.shop;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.pg.flex.dto.Brand;
import com.pg.flex.dto.Category;
import com.pg.flex.dto.Gender;
import com.pg.flex.dto.request.GetProductWithLike;
import com.pg.flex.dto.request.ProductRequestForm;
import com.pg.flex.dto.response.PaymentResponse;
import com.pg.flex.dto.response.ProductResponse;
import com.pg.flex.service.mypage.MyPageService;
import com.pg.flex.service.shop.ShopService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ShopController {

  @Autowired
  private ShopService service;

  @Autowired
  private MyPageService myPageService;

  @GetMapping("/shop")
  public String Shop(){
    return "/shop/index";
  }
  
  @GetMapping("/edit_product")
  public String editProduct(Model model) {

    List<Category> categories = service.getCategories();
    List<Brand> brand = service.getProductBrands();
    List<Gender> genders = service.getSex();


    model.addAttribute("categories", categories);
    model.addAttribute("genders", genders);
    model.addAttribute("brands", brand);
    return "/shop/edit_product";
  }

  @PostMapping("/edit_product")
  public String postEditProduct(ProductRequestForm requestForm) {

    service.postProduct(requestForm);

    return "redirect:/edit_product";
  }

  @GetMapping(value = "/show_products")
  public String showProducts(Model model, HttpSession session) {
    List<Category> categories = service.getCategories();
    List<Gender> genders = service.getSex();
    List<Brand> brands = service.getProductBrands();
    
    List<ProductResponse> products = service.getProducts();

    int productIndex = 0;
    int brandIndex = 0;

    for(ProductResponse response: products) {
      String changeName = changeBrandName(response.getBrandName());

      products.get(productIndex).setBrandName(changeName);
      productIndex++;
    }

    for(Brand response: brands) {
      String changeName = changeBrandName(response.getBrandName());

      brands.get(brandIndex).setBrandName(changeName);
      brandIndex++;
    }

    model.addAttribute("products", products);
    model.addAttribute("categories", categories);
    model.addAttribute("gender", genders);
    model.addAttribute("brand", brands);
    return "/shop/show_products";
  }

  @GetMapping(value = "/show_product")
  public String showProduct(HttpSession session, @RequestParam("productIndex") int productIndex, Model model) {

    // 1. ????????? ???????????? ???????????? ?????? ????????? ?????????
    ProductResponse productResponse;
    try {
      String userId = (String)session.getAttribute("loginId");
      GetProductWithLike query = new GetProductWithLike(productIndex, userId);
      
      productResponse = service.getProductByProductIndex(query);
    } catch (Exception e) {

      GetProductWithLike query = new GetProductWithLike(productIndex);
      productResponse = service.getProductByProductIndex(query);
    }

    // 1-1 ????????? ??? ???????????? ????????? ?????? ???????????????
    String changedBrandName = changeBrandName(productResponse.getBrandName());
    productResponse.setBrandName(changedBrandName);

    // 2. ????????? ????????? ?????? ??? ?????????????????? ?????????
    List<Category> categories = service.getCategories();
    List<Gender> gender = service.getSex();
    List<Brand> brands = service.getProductBrands();

    int index = 0;
    for(Brand brand: brands) {
      String changedId = changeBrandName(brand.getBrandName());
      brands.get(index).setBrandName(changedId);
      index++;
    }
    
    // 3.  1, 2????????? ??? ???????????? ???????????? ???????????? ?????? ?????? ???
    model.addAttribute("product", productResponse);
    model.addAttribute("categories", categories);
    model.addAttribute("gender", gender);
    model.addAttribute("brands", brands);
    return "/shop/show_product";
  }

  public String changeBrandName(String brandName) {
    String changedBrandName = "";

    switch (brandName) {
      case "?????????":
      changedBrandName = "Nike";
      break;

      case "????????????":
      changedBrandName = "Adidas";
      break;

      case "??????????????????":
      changedBrandName = "Stone Island";
      break;
    }

    return changedBrandName;
  }

  @GetMapping("/purchase")
  public String purchase(@RequestParam int totalPrice, Model model, HttpSession session) {

    String userId = (String)session.getAttribute("loginId");

    List<PaymentResponse> payments = myPageService.getPaymentsByUserId(userId);

    for(PaymentResponse item: payments) {
      if(item.getIsDefault() == 1) {
        model.addAttribute("defaultPayment", item);
      }
    }
    
    model.addAttribute("payments", payments);
    model.addAttribute("totalPrice", totalPrice);
    return "/shop/purchase";
  }

}