package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class Style {
  
  private String userId;
  private String postContent;
  private int likeCount;
  private int commentCount;


  public Style() {
  }


  public Style(String userId, String postContent, int likeCount, int commentCount) {
    this.userId = userId;
    this.postContent = postContent;
    this.likeCount = likeCount;
    this.commentCount = commentCount;
  }

}
