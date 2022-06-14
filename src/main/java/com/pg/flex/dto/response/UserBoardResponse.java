package com.pg.flex.dto.response;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class UserBoardResponse {

  private int boardIndex;
  private String savedFileName;
  private String searchId;
  private String boardContent;
  private List<String> relatedThumb;
  

  public UserBoardResponse() {
  }

  public UserBoardResponse(int boardIndex, String savedFileName, String searchId, String boardContent) {
    this.boardIndex = boardIndex;
    this.savedFileName = savedFileName;
    this.searchId = searchId;
    this.boardContent = boardContent;
  }

}
