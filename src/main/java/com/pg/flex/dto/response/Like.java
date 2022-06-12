package com.pg.flex.dto.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class Like {

  private int    likeIndex;
  private int    productIndex;
  private String thumbSavedFileName;
  private String brandName;
  private String productName;
  private int    productPrice;
  
}
