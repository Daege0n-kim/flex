package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class Brand {

  private int brandIndex;
  private String brandName;


  public Brand(int brandIndex, String brandName) {
    this.brandIndex = brandIndex;
    this.brandName = brandName;
  }

  
}
