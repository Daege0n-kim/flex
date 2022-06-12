package com.pg.flex.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class IsLiked {

  private int productIndex;
  private String userId;


  public IsLiked(int productIndex, String userId) {
    this.productIndex = productIndex;
    this.userId = userId;
  }

  
}
