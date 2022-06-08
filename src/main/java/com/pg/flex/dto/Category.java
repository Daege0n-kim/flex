package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class Category {

  private int categoryIndex;
  private String categoryName;
  

  public Category(int categoryIndex, String categoryName) {
    this.categoryIndex = categoryIndex;
    this.categoryName = categoryName;
  }

}
