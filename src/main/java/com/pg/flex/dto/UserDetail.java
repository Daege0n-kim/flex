package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class UserDetail {

  private String savedFileName;
  private String userId;
  private String userName;
  private int totalPrice;

  public UserDetail() {}
  public UserDetail(String savedFileName) {
    this.savedFileName = savedFileName;
  }
  public UserDetail(String savedFileName, String userId) {
    this.savedFileName = savedFileName;
    this.userId = userId;
  }
  public UserDetail(String savedFileName, String userId, String userName) {
    this.savedFileName = savedFileName;
    this.userId = userId;
    this.userName = userName;
  }
  public UserDetail(String savedFileName, String userId, String userName, int totalPrice) {
    this.savedFileName = savedFileName;
    this.userId = userId;
    this.userName = userName;
    this.totalPrice = totalPrice;
  }

}
