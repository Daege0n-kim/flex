package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductRequest {

  private int productIndex;
  private String productName;
  private String productBrand;
  private int productPrice;
  private String categoryName;

}
