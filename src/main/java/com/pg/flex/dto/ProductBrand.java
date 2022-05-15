package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductBrand {

  private int brandIndex;
  private String brandName;


  public ProductBrand(int brandIndex, String brandName) {
    this.brandIndex = brandIndex;
    this.brandName = brandName;
  }

  
}
