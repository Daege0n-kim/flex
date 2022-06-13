package com.pg.flex.dto.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class PurchaseResponse {

  private int purchaseIndex;
  private String thumbSavedFileName;
  private String brandName;
  private String productName;
  private String count;
  private String productPrice;
  private String createdDate;
  private String status;
  
}
