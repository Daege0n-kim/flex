package com.pg.flex.dto.query;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class PostBoardQueryForm {

  private int    boardIndex;
  private String boardContent;
  private String savedFileName;
  private String userId;



  public PostBoardQueryForm() {
  }

  public PostBoardQueryForm(String boardContent, String savedFileName, String userId) {
    this.boardContent = boardContent;
    this.savedFileName = savedFileName;
    this.userId = userId;
  }
  public PostBoardQueryForm(int boardIndex, String boardContent, String savedFileName, String userId) {
    this.boardIndex = boardIndex;
    this.boardContent = boardContent;
    this.savedFileName = savedFileName;
    this.userId = userId;
  }

  public int getBoardIndex() {
    return this.boardIndex;
  }

  public void setBoardIndex(int boardIndex) {
    this.boardIndex = boardIndex;
  }

  public String getBoardContent() {
    return this.boardContent;
  }

  public void setBoardContent(String boardContent) {
    this.boardContent = boardContent;
  }

  public String getSavedFileName() {
    return this.savedFileName;
  }

  public void setSavedFileName(String savedFileName) {
    this.savedFileName = savedFileName;
  }

  public String getUserId() {
    return this.userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }

  public PostBoardQueryForm boardIndex(int boardIndex) {
    setBoardIndex(boardIndex);
    return this;
  }

  public PostBoardQueryForm boardContent(String boardContent) {
    setBoardContent(boardContent);
    return this;
  }

  public PostBoardQueryForm savedFileName(String savedFileName) {
    setSavedFileName(savedFileName);
    return this;
  }

  public PostBoardQueryForm userId(String userId) {
    setUserId(userId);
    return this;
  }

 

  @Override
  public String toString() {
    return "{" +
      " boardIndex='" + getBoardIndex() + "'" +
      ", boardContent='" + getBoardContent() + "'" +
      ", savedFileName='" + getSavedFileName() + "'" +
      ", userId='" + getUserId() + "'" +
      "}";
  }
  
}
