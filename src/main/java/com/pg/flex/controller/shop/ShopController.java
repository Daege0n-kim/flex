package com.pg.flex.controller.shop;

import java.util.ArrayList;
import java.util.List;

import com.pg.flex.dto.Product;
import com.pg.flex.dto.ProductBrand;
import com.pg.flex.dto.ProductCategory;
import com.pg.flex.dto.ProductEditRequest;
import com.pg.flex.dto.ProductImage;
import com.pg.flex.dto.ProductResponse;
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
  public String postEditProduct(@RequestParam("thumb") MultipartFile thumb, @RequestParam("detail") MultipartFile detail, ProductEditRequest productEditRequest) {

    int productIndex = service.addProduct(productEditRequest);

    if(productIndex > 0) {
      List<MultipartFile> list = new ArrayList<>();
      list.add(thumb);
      list.add(detail);
      service.addProductImage(productIndex, list);
    }

    return "redirect:/edit_product";
  }

  @GetMapping(value = "/show_products")
  public String showProducts(Model model) {
    List<Product> products = service.getProducts();
    List<ProductResponse> productResponses = new ArrayList<>();

    for(Product product : products) {
      ProductResponse productResponse = new ProductResponse(product.getProductIndex(), product.getProductName(), product.getProductBrand(), product.getProductPrice(), product.getCategoryName());
      List<ProductImage> imagesList = service.getProductImageByProductImage(product.getProductIndex());
      for(ProductImage image : imagesList) {
        if (image.getIsThumb() == 1) {
          productResponse.setThumbSrc(image.getSavedFileName());
        } else {
          productResponse.setDetailSrc(image.getSavedFileName());
        }
      }

      productResponses.add(productResponse);
    }

    model.addAttribute("productResponse", productResponses);
    return "/shop/show_products";
  }

  @GetMapping(value = "/show_product")
  public String showProduct(@RequestParam("productIndex") int productIndex, Model model) {

    Product product = service.getProductByProductIndex(productIndex);

    ProductResponse productResponse = new ProductResponse(product.getProductIndex(), product.getProductName(), product.getProductBrand(), product.getProductPrice(), product.getCategoryName());

    List<ProductImage> imagesList = service.getProductImageByProductImage(productIndex);
    for(ProductImage image : imagesList) {
      if (image.getIsThumb() == 1) {
        productResponse.setThumbSrc(image.getSavedFileName());
      } else {
        productResponse.setDetailSrc(image.getSavedFileName());
      }
    }

    model.addAttribute("product", productResponse);
    return "/shop/show_product";
  }
}
