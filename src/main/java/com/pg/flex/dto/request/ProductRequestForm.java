package com.pg.flex.dto.request;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class ProductRequestForm {

  private String        productName;
  private int           productPrice;
  private MultipartFile thumb;
  private MultipartFile detail;
  private int           category;
  private int           brand;
  private int           gender;
  
}
