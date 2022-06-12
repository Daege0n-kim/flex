package com.pg.flex.dto.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductResponse {

  private int     productIndex;
  private String  productName;
  private int     productPrice;
  private String  thumbSavedFileName;
  private String  detailSavedFileName;
  private int     categoryIndex;
  private int     brandIndex;
  private int     genderIndex;
  private String  categoryName;
  private String  brandName;
  private String  genderName;
  private int     likeIndex;

  public ProductResponse(int productIndex, String productName, int productPrice, String thumbSavedFileName, String detailSavedFileName, int categoryIndex, int brandIndex, int genderIndex, String categoryName, String brandName, String genderName) {
    this.productIndex = productIndex;
    this.productName = productName;
    this.productPrice = productPrice;
    this.thumbSavedFileName = thumbSavedFileName;
    this.detailSavedFileName = detailSavedFileName;
    this.categoryIndex = categoryIndex;
    this.brandIndex = brandIndex;
    this.genderIndex = genderIndex;
    this.categoryName = categoryName;
    this.brandName = brandName;
    this.genderName = genderName;
  }

  public ProductResponse(int productIndex, String productName, int productPrice, String thumbSavedFileName, String detailSavedFileName, int categoryIndex, int brandIndex, int genderIndex, String categoryName, String brandName, String genderName, int likeIndex) {
    this.productIndex = productIndex;
    this.productName = productName;
    this.productPrice = productPrice;
    this.thumbSavedFileName = thumbSavedFileName;
    this.detailSavedFileName = detailSavedFileName;
    this.categoryIndex = categoryIndex;
    this.brandIndex = brandIndex;
    this.genderIndex = genderIndex;
    this.categoryName = categoryName;
    this.brandName = brandName;
    this.genderName = genderName;
    this.likeIndex = likeIndex;
  }
  
}
