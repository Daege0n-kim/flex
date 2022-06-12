package com.pg.flex.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class AddToCartFromLike {

  private int likeIndex;
  private int productIndex;
  
}
