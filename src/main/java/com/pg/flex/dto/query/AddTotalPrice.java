package com.pg.flex.dto.query;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class AddTotalPrice {

  private String userId;
  private int    totalPrice;

  public AddTotalPrice(String userId, int totalPrice) {
    this.userId = userId;
    this.totalPrice = totalPrice;
  }
  
}
