package com.pg.flex.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class CartIndexForPurchase {
  private int    cartIndex;
  private int    productIndex;
  private int    count;
  private String userId;
}
