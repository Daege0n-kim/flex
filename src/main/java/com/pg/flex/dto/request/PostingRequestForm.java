package com.pg.flex.dto.request;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class PostingRequestForm {

  private MultipartFile postSavedFile;
  private String postContent;
  private List<String> productIndex;
  
}
