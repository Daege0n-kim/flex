package com.pg.flex.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class UserImage {

  private int imgIndex;
  private String userId;
  private String originalFileName;
  private String savedFileName;

  public UserImage(String userId, String originalFileName, String savedFileName) {
    this.userId = userId;
    this.originalFileName = originalFileName;
    this.savedFileName = savedFileName;
  }
}
