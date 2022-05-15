package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductEditRequest {

  private String brandName;
  private String productName;
  private int productPrice;
  private String categoryName;
  private String sex;

  public ProductEditRequest(String brandName, String productName, int productPrice, String categoryName, String sex) {
    this.brandName = brandName;
    this.productName = productName;
    this.productPrice = productPrice;
    this.categoryName = categoryName;
    this.sex = sex;
  }

}
