package com.pg.flex.controller.shop;

import java.util.List;

import com.pg.flex.dto.ProductBrand;
import com.pg.flex.dto.ProductCategory;
import com.pg.flex.dto.ProductEditRequest;
import com.pg.flex.dto.ProductSex;
import com.pg.flex.service.shop.ShopService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

    List<ProductCategory> categories = service.getCategories();
    List<ProductSex> sex = service.getSex();
    List<ProductBrand> brands = service.getProductBrands();

    model.addAttribute("categories", categories);
    model.addAttribute("sex", sex);
    model.addAttribute("brands", brands);
    return "/shop/edit_product";
  }

  @PostMapping("/edit_product")
  public void postEditProduct(@RequestParam("thumb") MultipartFile thumb, @RequestParam("detail") MultipartFile detail, ProductEditRequest productEditRequest) {

    service.addProduct(productEditRequest);

  }
}
