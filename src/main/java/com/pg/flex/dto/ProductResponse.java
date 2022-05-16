package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductResponse {

  private int productIndex;
  private String productName;
  private String productBrand;
  private int productPrice;
  private String categoryName;
  private String thumbSrc;
  private String detailSrc;


  public ProductResponse() {}
  public ProductResponse(int productIndex) {
    this.productIndex = productIndex;
  }
  public ProductResponse(int productIndex, String productName) {
    this.productIndex = productIndex;
    this.productName = productName;
  }
  public ProductResponse(int productIndex, String productName, String productBrand) {
    this.productIndex = productIndex;
    this.productName = productName;
    this.productBrand = productBrand;
  }
  public ProductResponse(int productIndex, String productName, String productBrand, int productPrice) {
    this.productIndex = productIndex;
    this.productName = productName;
    this.productBrand = productBrand;
    this.productPrice = productPrice;
  }
  public ProductResponse(int productIndex, String productName, String productBrand, int productPrice, String categoryName) {
    this.productIndex = productIndex;
    this.productName = productName;
    this.productBrand = productBrand;
    this.productPrice = productPrice;
    this.categoryName = categoryName;
  }
  public ProductResponse(int productIndex, String productName, String productBrand, int productPrice, String categoryName, String thumbSrc) {
    this.productIndex = productIndex;
    this.productName = productName;
    this.productBrand = productBrand;
    this.productPrice = productPrice;
    this.categoryName = categoryName;
    this.thumbSrc = thumbSrc;
  }
  public ProductResponse(int productIndex, String productName, String productBrand, int productPrice, String categoryName, String thumbSrc, String detailSrc) {
    this.productIndex = productIndex;
    this.productName = productName;
    this.productBrand = productBrand;
    this.productPrice = productPrice;
    this.categoryName = categoryName;
    this.thumbSrc = thumbSrc;
    this.detailSrc = detailSrc;
  }

}
