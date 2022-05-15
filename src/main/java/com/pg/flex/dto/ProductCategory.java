package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductCategory {

  private int categoryIndex;
  private String categoryName;
  

  public ProductCategory(int categoryIndex, String categoryName) {
    this.categoryIndex = categoryIndex;
    this.categoryName = categoryName;
  }

}
