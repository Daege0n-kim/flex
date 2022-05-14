package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class UserDetail {

  private String userName;
  private String userId;
  private int totalPrice;
  private String savedFileName;

  public UserDetail(String userName, String userId, int totalPrice) {
    this.userName = userName;
    this.userId = userId;
    this.totalPrice = totalPrice;
  }


  public UserDetail(String userName, String userId, int totalPrice, String savedFileName) {
    this.userName = userName;
    this.userId = userId;
    this.totalPrice = totalPrice;
    this.savedFileName = savedFileName;
  }

}
