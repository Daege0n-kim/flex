package com.pg.flex.controller.shop;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestShopController {
  
  @GetMapping(value = "/get_products")
  public String getProducts() {
    System.out.println("Hello~");
    return "Hello";
  }

}
