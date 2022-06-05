package com.pg.flex.dto.request;

import lombok.Generated;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
@Generated
public class SignUserRequestForm {

  private String loginId;
  private String loginPw;
  private String name;
  private String searchId;
  
}
