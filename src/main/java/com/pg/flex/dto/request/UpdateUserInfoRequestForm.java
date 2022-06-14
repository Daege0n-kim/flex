package com.pg.flex.dto.request;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class UpdateUserInfoRequestForm {
  private String loginId;
  private String name;
  private String searchId;
  private MultipartFile savedFileName;
}
