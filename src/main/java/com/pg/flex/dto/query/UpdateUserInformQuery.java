package com.pg.flex.dto.query;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class UpdateUserInformQuery {
  private String loginId;
  private String name;
  private String searchId;
  private String savedFileName;


  public UpdateUserInformQuery(String loginId, String name, String searchId, String savedFileName) {
    this.loginId = loginId;
    this.name = name;
    this.searchId = searchId;
    this.savedFileName = savedFileName;
  }

}
