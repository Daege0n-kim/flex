package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class Gender {
  private int genderIndex;
  private String genderName; 


  public Gender(int genderIndex, String genderName) {
    this.genderIndex = genderIndex;
    this.genderName = genderName;
  }
}
