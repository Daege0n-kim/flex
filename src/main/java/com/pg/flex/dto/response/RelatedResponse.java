package com.pg.flex.dto.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class RelatedResponse {

  private int boardIndex;
  private String boardContent;
  private String savedFileName;
  private String createdDate;
  private String createUser;
  

  public RelatedResponse() {
  }

  public RelatedResponse(int boardIndex, String boardContent, String savedFileName, String createdDate, String createUser) {
    this.boardIndex = boardIndex;
    this.boardContent = boardContent;
    this.savedFileName = savedFileName;
    this.createdDate = createdDate;
    this.createUser = createUser;
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

  public String getCreatedDate() {
    return this.createdDate;
  }

  public void setCreatedDate(String createdDate) {
    this.createdDate = createdDate;
  }

  public String getCreateUser() {
    return this.createUser;
  }

  public void setCreateUser(String createUser) {
    this.createUser = createUser;
  }

  public RelatedResponse boardIndex(int boardIndex) {
    setBoardIndex(boardIndex);
    return this;
  }

  public RelatedResponse boardContent(String boardContent) {
    setBoardContent(boardContent);
    return this;
  }

  public RelatedResponse savedFileName(String savedFileName) {
    setSavedFileName(savedFileName);
    return this;
  }

  public RelatedResponse createdDate(String createdDate) {
    setCreatedDate(createdDate);
    return this;
  }

  public RelatedResponse createUser(String createUser) {
    setCreateUser(createUser);
    return this;
  }

  @Override
  public String toString() {
    return "{" +
      " boardIndex='" + getBoardIndex() + "'" +
      ", boardContent='" + getBoardContent() + "'" +
      ", savedFileName='" + getSavedFileName() + "'" +
      ", createdDate='" + getCreatedDate() + "'" +
      ", createUser='" + getCreateUser() + "'" +
      "}";
  }

}
