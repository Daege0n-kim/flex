package com.pg.flex.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class UpdateCartCount {
  private int cartIndex;

  public UpdateCartCount(int cartIndex) {
    this.cartIndex = cartIndex;
  }
}
