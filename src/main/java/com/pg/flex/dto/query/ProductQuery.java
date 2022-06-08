package com.pg.flex.dto.query;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductQuery {
  private String        productName;
  private int           productPrice;
  private String        thumbSavedFileName;
  private String        detailSavedFileName;
  private int           category;
  private int           brand;
  private int           gender;


  public ProductQuery(String productName, int productPrice, String thumbSavedFileName, String detailSavedFileName, int category, int brand, int gender) {
    this.productName = productName;
    this.productPrice = productPrice;
    this.thumbSavedFileName = thumbSavedFileName;
    this.detailSavedFileName = detailSavedFileName;
    this.category = category;
    this.brand = brand;
    this.gender = gender;
  }

}
