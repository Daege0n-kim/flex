package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductSex {
  private int sexIndex;
  private String sex; 


  public ProductSex(int sexIndex, String sex) {
    this.sexIndex = sexIndex;
    this.sex = sex;
  }
}
