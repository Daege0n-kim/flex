package com.pg.flex.dto.query;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class RelatedProductQuery {

  private int boardIndex;
  private int productIndex;
  private String userId;
  

  public RelatedProductQuery() {
  }

  public RelatedProductQuery(int boardIndex, int productIndex, String userId) {
    this.boardIndex = boardIndex;
    this.productIndex = productIndex;
    this.userId = userId;
  }

  public int getBoardIndex() {
    return this.boardIndex;
  }

  public void setBoardIndex(int boardIndex) {
    this.boardIndex = boardIndex;
  }

  public int getProductIndex() {
    return this.productIndex;
  }

  public void setProductIndex(int productIndex) {
    this.productIndex = productIndex;
  }

  public RelatedProductQuery boardIndex(int boardIndex) {
    setBoardIndex(boardIndex);
    return this;
  }

  public RelatedProductQuery productIndex(int productIndex) {
    setProductIndex(productIndex);
    return this;
  }

  @Override
  public String toString() {
    return "{" +
      " boardIndex='" + getBoardIndex() + "'" +
      ", productIndex='" + getProductIndex() + "'" +
      "}";
  }

}
