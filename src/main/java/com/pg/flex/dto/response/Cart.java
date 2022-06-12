package com.pg.flex.dto.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class Cart {
  private int    cartIndex;
  private int    productIndex;
  private String thumbSavedFileName;
  private String productBrand;
  private String productName;
  private int    productPrice;
  private int    cartCount;


  public Cart(int cartIndex, int productIndex, String thumbSavedFileName, String productBrand, String productName, int productPrice, int cartCount) {
    this.cartIndex = cartIndex;
    this.productIndex = productIndex;
    this.thumbSavedFileName = thumbSavedFileName;
    this.productBrand = productBrand;
    this.productName = productName;
    this.productPrice = productPrice;
    this.cartCount = cartCount;
  }

}
