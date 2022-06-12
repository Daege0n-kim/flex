package com.pg.flex.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class GetProductWithLike {
  
  private int    productIndex;
  private String userId;


  public GetProductWithLike() {}

  public GetProductWithLike(int productIndex) {
    this.productIndex = productIndex;
  }
  
  public GetProductWithLike(int productIndex, String userId) {
    this.productIndex = productIndex;
    this.userId = userId;
  }
  
}
