package com.pg.flex.controller.shop;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.pg.flex.dto.Brand;
import com.pg.flex.dto.Category;
import com.pg.flex.dto.Gender;
import com.pg.flex.dto.request.GetProductWithLike;
import com.pg.flex.dto.request.ProductRequestForm;
import com.pg.flex.dto.response.ProductResponse;
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

    model.addAttribute("products", products);
    model.addAttribute("categories", categories);
    model.addAttribute("gender", genders);
    model.addAttribute("brand", brands);
    return "/shop/show_products";
  }

  @GetMapping(value = "/show_product")
  public String showProduct(HttpSession session, @RequestParam("productIndex") int productIndex, Model model) {

    // 1. 상품의 기본키를 기준으로 상품 하나를 가져옴
    ProductResponse productResponse;
    try {
      String userId = (String)session.getAttribute("loginId");
      GetProductWithLike query = new GetProductWithLike(productIndex, userId);
      
      productResponse = service.getProductByProductIndex(query);
    } catch (Exception e) {

      GetProductWithLike query = new GetProductWithLike(productIndex);
      productResponse = service.getProductByProductIndex(query);
    }

    // 1-1 한글로 된 촌스러운 브랜드 이름 바꿔버리기
    String changedBrandName = changeBrandName(productResponse.getBrandName());
    productResponse.setBrandName(changedBrandName);

    // 2. 레프트 메뉴에 표시 할 카테고리들을 가져옴
    List<Category> categories = service.getCategories();
    List<Gender> gender = service.getSex();
    List<Brand> brands = service.getProductBrands();
    
    // 3.  1, 2번에서 한 작업물을 프론트로 보내주기 위해 저장 함
    model.addAttribute("product", productResponse);
    model.addAttribute("categories", categories);
    model.addAttribute("gender", gender);
    model.addAttribute("brands", brands);
    return "/shop/show_product";
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

  @GetMapping("/purchase")
  public String purchase() {
    return "/shop/purchase";
  }

}