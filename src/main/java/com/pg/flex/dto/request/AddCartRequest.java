package com.pg.flex.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class AddCartRequest {

  private int    productIndex;
  private String userId;


  public AddCartRequest(int productIndex, String userId) {
    this.productIndex = productIndex;
    this.userId = userId;
  }

  
}
