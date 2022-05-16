package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductEditRequest {

  private int productIndex;
  private int brandIndex;
  private String productName;
  private int productPrice;
  private int categoryIndex;
  private int sexIndex;


  public ProductEditRequest() {}
  public ProductEditRequest(int productIndex) {
    this.productIndex = productIndex;
  }
  public ProductEditRequest(int productIndex, int brandIndex) {
    this.productIndex = productIndex;
    this.brandIndex = brandIndex;
  }
  public ProductEditRequest(int productIndex, int brandIndex, String productName) {
    this.productIndex = productIndex;
    this.brandIndex = brandIndex;
    this.productName = productName;
  }
  public ProductEditRequest(int productIndex, int brandIndex, String productName, int productPrice) {
    this.productIndex = productIndex;
    this.brandIndex = brandIndex;
    this.productName = productName;
    this.productPrice = productPrice;
  }
  public ProductEditRequest(int productIndex, int brandIndex, String productName, int productPrice, int categoryIndex) {
    this.productIndex = productIndex;
    this.brandIndex = brandIndex;
    this.productName = productName;
    this.productPrice = productPrice;
    this.categoryIndex = categoryIndex;
  }
  public ProductEditRequest(int productIndex, int brandIndex, String productName, int productPrice, int categoryIndex, int sexIndex) {
    this.productIndex = productIndex;
    this.brandIndex = brandIndex;
    this.productName = productName;
    this.productPrice = productPrice;
    this.categoryIndex = categoryIndex;
    this.sexIndex = sexIndex;
  }


}
