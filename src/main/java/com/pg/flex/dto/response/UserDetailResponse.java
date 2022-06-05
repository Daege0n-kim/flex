package com.pg.flex.dto.response;

import lombok.Generated;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
@Generated
public class UserDetailResponse {
  private String loginId;
  private String name;
  private String searchId;
  private String savedFileName;
  private int    totalPrice;
  
}
