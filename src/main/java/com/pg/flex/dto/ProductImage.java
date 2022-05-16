package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductImage {

  private int imgIndex;
  private int productIndex;
  private String originalFileName;
  private String savedFileName;
  private int isThumb;


  public ProductImage() {}
  public ProductImage(int imgIndex) {
    this.imgIndex = imgIndex;
  }
  public ProductImage(int imgIndex, int productIndex) {
    this.imgIndex = imgIndex;
    this.productIndex = productIndex;
  }
  public ProductImage(int imgIndex, int productIndex, String originalFileName) {
    this.imgIndex = imgIndex;
    this.productIndex = productIndex;
    this.originalFileName = originalFileName;
  }
  public ProductImage(int productIndex, String originalFileName, String savedFileName) {
    this.productIndex = productIndex;
    this.originalFileName = originalFileName;
    this.savedFileName = savedFileName;
  }
  public ProductImage(int imgIndex, int productIndex, String originalFileName, String savedFileName) {
    this.imgIndex = imgIndex;
    this.productIndex = productIndex;
    this.originalFileName = originalFileName;
    this.savedFileName = savedFileName;
  }

}
