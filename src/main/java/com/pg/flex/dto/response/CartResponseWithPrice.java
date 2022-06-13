package com.pg.flex.dto.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class CartResponseWithPrice {

  private int    cartIndex;
  private int    productIndex;
  private String userId;
  private int    productPrice;
  
}
