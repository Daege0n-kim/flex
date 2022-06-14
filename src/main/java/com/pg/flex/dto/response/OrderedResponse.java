package com.pg.flex.dto.response;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class OrderedResponse {
  private String thumbSavedFileName;
  private String brandName;
  private String productName;
  private int    count;
  private int    productPrice;
  private String status;
  private String createdDate;
}
