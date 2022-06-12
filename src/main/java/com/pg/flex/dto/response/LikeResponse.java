package com.pg.flex.dto.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class LikeResponse {

  private int    likeIndex;
  private int    productIndex;
  private String userId;
  
}
